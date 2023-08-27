class UsersController < ApplicationController
  
  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end
  
  def create
    @user = User.create params.require(:user).permit(:name, :password)
  end

  def show
    @user = User.find(params[:id])
    @users = @user.books
    @book = Book.new
    @books = @users.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end
  
  private
  
   def user_params
     params.require(:user).permit(:password, :name, :email, :introduction, :profile_image)
   end
end
