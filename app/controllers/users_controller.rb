class UsersController < ApplicationController

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :username, :password, :password_confirmation)
  end

end