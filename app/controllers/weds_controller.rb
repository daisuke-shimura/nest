class WedsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    wed = Wed.new(book_id: book.id)
    wed.save
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:book_id])
    wed = Wed.find_by(book_id: book.id)
    wed.destroy
    redirect_to request.referer
  end
end
