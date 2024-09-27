class MommentsController < ApplicationController
  def create
    Momment.new(momment_params).save
    redirect_to request.referer
  end

  def destroy
    Momment.find(params[:id]).destroy
    redirect_to request.referer
  end

  private
  def momment_params
    params.require(:momment).permit(:momment_id)
  end
end
