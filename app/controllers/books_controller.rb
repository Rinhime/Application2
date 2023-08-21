class BooksController < ApplicationController
  # def new
  # end

  def index
    @books = Book.all
    @book = Book.new
  end
  
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to about_path
  end

  def show
  end
  
  private
   def book_params
     params.require(:book).permit(:title, :image, :body)
   end
end
