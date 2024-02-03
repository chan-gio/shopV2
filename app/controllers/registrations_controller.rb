class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    existing_user = User.find_by(email: @user.email)

    if existing_user
      redirect_to login_path, alert: 'Email already exists. Please log in.'
    else
      if @user.save
        session[:user_id] = @user.id
        redirect_to main_path, notice: 'Sign-up successful!'
      else
        flash.now[:alert] = 'Sign-up failed. Please check the form and try again.'
        render :new
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
