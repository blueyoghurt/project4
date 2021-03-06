class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @user = User.find(@current_user.id)
    @schools = School.all
    if @current_user.usertype == 2
      @school = School.find(SchoolUser.find_by!(:user_id => @current_user.id))
    elsif @current_user.usertype == 3
      @student = Student.find_by!(:user_id => @current_user.id)
    elsif @current_user.usertype == 4
      @ngo = Ngo.find(NgoUser.find_by!(:user_id => @current_user.id))
    end
    @education_levels = EducationLevel.all
  end

  def profile
    @user = User.find(@current_user.id)
    respond_to do |format|
      format.json { render json: @user, :except=>[:id, :password_digest, :created_at, :updated_at]}
    end
    # render json: @user
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if params[:user][:profile_pic]
      uploaded_file = params[:user][:profile_pic].path
      @user.update(profile_pic: Cloudinary::Uploader.upload(uploaded_file, :folder => "user/profile")["public_id"])
    elsif @user.gender == 1
      @user.update(profile_pic: "user/profile/cbvhfnluijup9kxbqirv")
    else
      @user.update(profile_pic: "user/profile/hglnxhj4zbuahmppz0px")
    end

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html {
          if (@user.usertype == 2) # redirect to school_user#create route
            redirect_to teacher_register_path, notice: 'User (teacher route) was successfully created.'
          elsif (@user.usertype == 3) # redirect to student_user#create route
            redirect_to student_register_path, notice: 'User (student route) was successfully created.'
          elsif (@user.usertype == 4) # redirect to ngo_user#create route
            redirect_to ngo_register_path, notice: 'User (ngo route) was successfully created.'
          end
        }
      else
        format.html {
          flash[:danger] = "Unable to create"
          redirect_to root_path
        }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        if params[:user][:profile_pic]
          uploaded_file = params[:user][:profile_pic].path
          @user.update(profile_pic: Cloudinary::Uploader.upload(uploaded_file, :folder => "user/profile")["public_id"])
        end
        format.html {
          flash[:success] = "Your profile has been updated."
          redirect_to users_url
        }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html {
        flash[:danger] = "User has been destroyed"
        redirect_to users_url
      }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :usertype, :profile_pic, :gender)
  end
end
