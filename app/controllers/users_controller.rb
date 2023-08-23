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
    @book_new = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
  end
  
  private
  
   def user_params
     params.require(:user).permit(:password, :name, :email)
   end
end
