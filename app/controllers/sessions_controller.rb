class SessionsController < ApplicationController

  def new
    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      respond_to do |format|
        format.js {}
        format.html { redirect_to '/' }
      end
    else
      flash.now[:error] = 'Invalid user, brah!'
      respond_to do |format|
        format.html { render 'new' }
        format.js
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
  
end