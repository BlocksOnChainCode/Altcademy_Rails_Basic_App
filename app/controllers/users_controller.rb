class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path(@user)
      puts "User created successfully"
    else
      render :index
    end
  end

  # Add a show action that finds a user by its ID and renders the show.html.erb view
  def show
    @user = User.find(params[:id])
  end

  # Add an index action that lists all users
  def index
    @users = User.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @users }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name)
  end
end