class WeeksController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    week = Week.new(book_id: book.id)
    week.save
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:book_id])
    week = Week.find_by(book_id: book.id)
    week.destroy
    redirect_to request.referer
  end

end
