class UsersController < ApplicationController
  def create
    # Create a dummy user from the form data
    @user = User.new(user_params)
    
    # Save the user
    if @user.save
      # If the user is saved successfully, redirect to the index action
      redirect_to users_path
    else
      # If the user fails validation, render the index action again
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name)
  end
end