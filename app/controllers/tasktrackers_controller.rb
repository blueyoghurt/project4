class TasktrackersController < ApplicationController
  before_action :set_tasktracker, only: [:show, :edit, :update, :destroy]

  # GET /tasktrackers
  # GET /tasktrackers.json
  def index
    @tasktrackers = Tasktracker.all
  end

  # GET /tasktrackers/1
  # GET /tasktrackers/1.json
  def show
  end

  # GET /tasktrackers/new
  def new
    @tasktracker = Tasktracker.new
  end

  # GET /tasktrackers/1/edit
  def edit
  end

  # POST /tasktrackers
  # POST /tasktrackers.json
  def create
    @tasktracker = Tasktracker.new(tasktracker_params)

    respond_to do |format|
      if @tasktracker.save
        format.html { redirect_to @tasktracker, notice: 'Tasktracker was successfully created.' }
        format.json { render :show, status: :created, location: @tasktracker }
      else
        format.html { render :new }
        format.json { render json: @tasktracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasktrackers/1
  # PATCH/PUT /tasktrackers/1.json
  def update
    respond_to do |format|
      if @tasktracker.update(tasktracker_params)
        format.html { redirect_to @tasktracker, notice: 'Tasktracker was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasktracker }
      else
        format.html { render :edit }
        format.json { render json: @tasktracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasktrackers/1
  # DELETE /tasktrackers/1.json
  def destroy
    @tasktracker.destroy
    respond_to do |format|
      format.html { redirect_to tasktrackers_url, notice: 'Tasktracker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasktracker
      @tasktracker = Tasktracker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasktracker_params
      params.require(:tasktracker).permit(:approval, :picture, :description, :card_id, :task_id)
    end
end
