class HolidaysController < ApplicationController
  def create
    day = Holiday.new(holiday_parsms)
    book = Book.find(params[:book_id])
    day.book_id = book.id
    #day.trigger = true
    day.save
    redirect_to request.referer
  end

  def destroy
    Holiday.find(params[:id]).destroy
    redirect_to request.referer
  end

  def holiday_parsms
    params.require(:holiday).permit(:trigger)
  end
end
