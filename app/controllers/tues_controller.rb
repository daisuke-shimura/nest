class TuesController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    tue = Tue.new(book_id: book.id)
    tue.save
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:book_id])
    tue = Tue.find_by(book_id: book.id)
    tue.destroy
    redirect_to request.referer
  end

end
