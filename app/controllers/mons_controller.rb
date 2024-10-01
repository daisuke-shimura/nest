class MonsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    Mon.new(book_id: book.id).save
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:book_id])
    Mon.find_by(book_id: book.id).destroy
    redirect_to request.referer
  end
end
