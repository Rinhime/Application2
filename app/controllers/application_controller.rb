class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
   def after_sign_in_path_for(resource)
     user_path(current_user.id)
   end
   
   
   def after_sign_out_path_for(resource)
     about_path
   end

   protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
   end 
   
#   def new
#       @book = Book.new
#   end
   
#   def create
#       @book = Book.new(book_params)
#       @book.user_id = current_user.id
#       @book.save
#       redirect_to about_path
#   end
   
#   private
#   def book_params
#      params.require(:book).permit(:title, :image, :body)
#   end
end
