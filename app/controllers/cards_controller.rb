class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    @tasktrackers = Tasktracker.where(:card_id => @card.id)
  end

  def profile
    @student = Student.find_by!(:user_id => @current_user.id)
    @cards = Card.where(student_id: @student.id)
    respond_to do |format|
      format.json { render json: @cards, :include => { :student => {},
                                                      :template => {:include => [:tasks, :event => {:include => [:ngo]} ] },
                                                      :tasktrackers => { :include => [:task] }
                                                    }
      }
    end
  end

  def pending
    student_ids = Student.where(school_id: current_user.school_user.school_id)
    @cards = Card.where(student_id: student_ids, completion: 1)
    respond_to do |format|
      format.json { render json: @cards, :include => { :student => {:include => [:user]},
                                                      :template => {:include => [:event, :tasks] },
                                                      :tasktrackers => { :include => [:task] }
                                                    }
      }
    end
  end

  def search
  end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card.template.event, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:student_id, :template_id, :completion)
    end
end
