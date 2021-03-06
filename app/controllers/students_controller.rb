class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  ## customised actions
  def search
    school_user = SchoolUser.where(user_id: @current_user.id).first
    school = school_user.school_id
    @students = Student.where(school_id: school)
    respond_to do |format|
      format.json { render json: @students, :include => [:user, :level] }
    end
  end

  def signedup
    templates = Template.where(event_id: params[:id]).pluck(:id)
    cards = Card.where(template_id: templates).pluck(:student_id)
    @students = Student.where(id: cards)
    respond_to do |format|
      format.json { render json: @students, :include => [:level, :school, :user]  }
    end
  end

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @student = Student.where(:user_id => @current_user.id)
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  def profile
    @student = Student.find_by!(:user_id => @current_user.id)
    respond_to do |format|
      format.json { render json: @student, :include => [:level, :school]  }
    end
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.user_id = @current_user.id

    respond_to do |format|
      if @student.save
        format.html {
          flash[:success] = 'Welcome ' + @student.user.name
          redirect_to users_path
        }
        format.json { render :show, status: :created, location: @student }
      else
        format.html {
          flash[:danger] = 'Failed to create student'
          render :new
        }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html {
          flash[:success] = "Your profile has been updated"
          redirect_to users_url
        }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:user_id, :level_id, :school_id)
  end
end
