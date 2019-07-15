class PaysController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @pay = Pay.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @pay = Pay.find(params[:id])
    if pay_params.each do |id,item|
      ot = Pay.find(id)
      ot.update_attributes!(item)
      flash[:success] = "残業申請しました"
      redirect_to @user
    end
    else
      render @user
    end
  end
  
  private
  
  def pay_params
    params.permit(pays: [:started,:finished])[:pays]
  end
end
