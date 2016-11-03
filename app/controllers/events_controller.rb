class EventsController < ApplicationController
  before_action :is_school_user, only: [:create, :new, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  def show
    @templates = Template.find_by(event_id: @event.id)
    @cards = Card.where(template_id: @templates.id)
    relevant_templates = Template.where(event_id: @event.id)

    if @current_user.usertype == 2
      @tasks = Task.where(template_id: relevant_templates.ids)
      @signup = Card.where(template_id: relevant_templates.ids).length

    elsif @current_user.usertype == 3
      @template = Template.find_by(event_id: @event.id, level_id: @current_user.student.level.id)
      @tasks = Task.where(template_id: @template.id)
      @signup = Card.where(template_id: relevant_templates.ids).length

    elsif @current_user.usertype == 4

    end
  end

  def search
    school_user = SchoolUser.where(user_id: @current_user.id).first
    school = school_user.school_id
    @events = Event.where(school_id: school)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # ngo view / upcoming events
  def pending
    @events = Event.where("status > ?", -1 ).where("end_date > ?", Date.today)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # ngo view / past events 
  def past
    @events = Event.where("end_date <= ?", Date.today )
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # student view / upcoming events
  def eventsAvailabletoStudent
    templates = Template.where(level_id: current_user.student.level_id).pluck(:event_id)
    @events = Event.where(id: templates).where("end_date >= ?", Date.today).where(school_id: current_user.school.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
  end

  # student view / past events
  def pastEventstoStudent
    templates = Template.where(level_id: current_user.student.level_id).pluck(:id)
    @events = Event.where(id: templates).where("end_date < ?", Date.today).where(school_id: current_user.school.id)
    respond_to do |format|
      format.json { render json: @events, :include => [:tasks, :cards] }
    end
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
    puts "=================="
    puts "#{@event.inspect}"
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "Great! Let's enter the details for the event!" }
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
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
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
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
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
end
