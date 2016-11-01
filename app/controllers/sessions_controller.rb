class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(user_params)
    puts "New session created"

    if user
      session[:user_id] = user.id
      flash[:success] = "Welcome back!"
      redirect_to users_path#, notice: "Thank you for logging in!"
    else
      flash[:danger] = "Credentials Invalid!!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Good bye, we hope to see you again!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
