class EventsController < ApplicationController
  before_action :is_school_user, only: [:create, :new, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy, :event_approval]

  # Custom actions
  def search
    school_user = SchoolUser.where(user_id: @current_user.id).first
    school = school_user.school_id
    @events = Event.where(school_id: school)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards, :ngo] }
    end
  end

  # ngo view / upcoming events
  def pending
    puts ">>>> STATUS", Event.where("status > ?", 0 ).pluck(:id)
    puts ">>>> DATE", Event.where("end_date > ?", Date.today).pluck(:id)
    puts ">>>> NGO_ID", Event.where(ngo_id: current_user.ngo.id).pluck(:id)
    @events = Event.where("status > ?", 0 ).where("end_date > ?", Date.today).where(ngo_id: current_user.ngo.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # ngo view / past events
  def past
    @events = Event.where("end_date <= ?", Date.today ).where(ngo_id: current_user.ngo.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # student view / upcoming events
  def eventsAvailabletoStudent
    templates = Template.where(level_id: current_user.student.level_id).pluck(:event_id)
    @events = Event.where(id: templates).where("end_date >= ?", Date.today).where(school_id: current_user.school.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards, :ngo] }
    end
  end

  # student view / past events
  def pastEventstoStudent
    templates = Template.where(level_id: current_user.student.level_id).pluck(:id)
    @events = Event.where(id: templates).where("end_date < ?", Date.today).where(school_id: current_user.school.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards, :ngo] }
    end
  end

  def event_approval
    if current_user.usertype == 2 #school_users
      if @event.school.id != @event.school.id
        flash[:danger] = "You can only send an event for approval if you are the representative of the school"
        redirect_to root_path
        return
      end
    elsif current_user.usertype == 4 #ngo_users
      if @event.ngo.id != current_user.ngo.id
        flash[:danger] = "You can only approve an event if you are the representative of the relevant NGO"
        redirect_to root_path
        return
      end
    end

    respond_to do |format|
      if @event.update(event_approval_params)
        format.html {
          if @event.status == 1
            flash[:success] = "Event has been sent to the relevant NGOs"
          elsif @event.status == 2
            flash[:success] = "Event status has been updated and sent to the relevant organisers"
          elsif @event.status == 3
            flash[:success] = "Event has been approved!"
          end
          redirect_to @event
        }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html {
          flash[:danger] = "Unable to update event approval: " + @event.errors
          render :edit
        }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  def show
    relevant_templates = Template.where(event_id: @event.id)
    @cards = Card.where(template_id: relevant_templates.pluck(:id))

    if @current_user.usertype == 2
      @tasks = Task.where(template_id: relevant_templates.ids)
    elsif @current_user.usertype == 3
      @template = Template.find_by(event_id: @event.id, level_id: @current_user.student.level.id)
      @tasks = Task.where(template_id: @template.id)
    elsif @current_user.usertype == 4
      @tasks = Task.where(template_id: relevant_templates.ids)

    end
    @signup = Card.where(template_id: relevant_templates.ids).length
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.school_id = SchoolUser.find_by!(user_id: current_user.id).school_id
    if params[:event][:image]
      uploaded_file = params[:event][:image].path
      @event.update(image: Cloudinary::Uploader.upload(uploaded_file, :folder => "events/")["public_id"])
    end
    @event.ngo_id = 1 #to be corrected later on
    @event.status = 0
    respond_to do |format|
      if @event.save
        format.html {
          flash[:success] = "Great! Let's enter the details for the event!"
          redirect_to @event
        }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html {
          flash[:success] = "Event was successfully updated."
          redirect_to @event
        }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html {
        flash[:danger] = "Event has been deleted."
        redirect_to events_url
      }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :start_time, :duration, :description, :vacancy, :education_level_id)
  end

  def event_approval_params
    params.require(:event).permit(:status)
  end

end
