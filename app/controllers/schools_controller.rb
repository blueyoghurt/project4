class SchoolsController < ApplicationController
  before_action :is_authenticated_admin, only: [:create, :new, :destroy]
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  # GET /schools.json
  def index
    @schools = School.all
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  end

  def profile
    school_user = SchoolUser.find_by(:user_id => @current_user.id)
    school = school_user.school_id
    @school = School.find(school)
    respond_to do |format|
      format.json { render json: @school, :include => [:education_level]  }
    end
  end

  def search
    puts "IM IN SCHOOL"
    @schools = School.all
    respond_to do |format|
      format.json { render json: @schools, :include => [:education_level] }
    end
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)
    if params[:school][:logo]
      uploaded_file = params[:school][:logo].path
      @school.update(logo: Cloudinary::Uploader.upload(uploaded_file, :folder => "school/logo")["public_id"])
    end
    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update
    respond_to do |format|
      if @school.update(school_params)
        if params[:school][:logo]
          uploaded_file = params[:school][:logo].path
          @school.update(logo: Cloudinary::Uploader.upload(uploaded_file, :folder => "school/logo")["public_id"])
        end
        format.html { redirect_to users_path, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :address, :telephone, :website, :logo, :education_level_id)
    end
end
