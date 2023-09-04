class HomesController < ApplicationController
  def top
     @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to about_path
  end
  
  def about
  end
end
