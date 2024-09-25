class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to request.referer
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit( :start, :finish)
  end
end
