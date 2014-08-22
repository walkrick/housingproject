class UsersController < ApplicationController

  def index
    @users = User.order(:username)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_parameters)
    if @user.save
      redirect_to "/"
    else
      render :new
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def allowed_parameters
    params.require(:user).permit(:username, :email, :password)
  end

end