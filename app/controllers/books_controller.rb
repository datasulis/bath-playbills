class BooksController < ApplicationController

  def index
    @books = Book.all.order(:start_date)
  end
  
  def show
    @book = Book.find(params[:id])
  end  
end
