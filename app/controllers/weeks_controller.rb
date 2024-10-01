class WeeksController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    Week.new(book_id: book.id).save
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:book_id])
    Week.find_by(book_id: book.id).destroy
    redirect_to request.referer
  end

end
