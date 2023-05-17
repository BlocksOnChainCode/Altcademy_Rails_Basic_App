class SessionsController < ApplicationController
  # Add a new action that renders the new.html.erb view
  # here goes the login form in that particilar view
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
  
    if @user && @user.authenticate(params[:session][:password])
      # Log in the user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # Create an error message
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end
  
  def destroy
  end
end
