class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  # authentication is true, if we have a current_user
  def is_authenticated
    unless current_user
      flash[:danger] = "User must be logged in!"
      redirect_to login_path
    end
  end

  def is_authenticated_admin
    unless (current_user.usertype == 1)
      flash[:danger] = "Admin Only Access!"
      redirect_to root_path
    end
  end

  def is_school_user
    unless (current_user.usertype == 2)
      flash[:danger] = "School Management Only!"
      redirect_to root_path
    end
  end

  # Do we have a @current_user variable? if not try to find a user in the db using the session id
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
    @newuser = User.new

    if @current_user
      return @current_user
    end

    ## What does this portion do?
    user_id = session[:user_id]
    @current_user = User.find_by_id(user_id)
    return @current_user

  end

  # Methods defined as helper_methods are available in the views
  # ------------------------------------------------------------
  helper_method :current_user

end
