class UsersController < ApplicationController
  
  def index
    @users = User.all
    @user = User.new
  end
  
  def create
    @user = User.create params.require(:user).permit(:name, :password)
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  private
   def user_params
     params.require(:user).permit(:password, :name, :email)
   end
end
