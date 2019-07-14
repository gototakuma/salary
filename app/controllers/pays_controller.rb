class PaysController < ApplicationController
  
  def show
    @user = User.find(params[:user_id])
    @pay = Pay.find(params[:id])
  end
  
  def update
    @user = User.find(params[:user_id])
    @pay = Pay.find(params[:id])
    if @pay.update_attributes(pay_params) 
      flash[:sucess] = "シフト時間保存しました。"
      redirect_to @user
    end
  end
  
  private
  
  def pay_params
    params.require(:pay).permit(:started, :finished)
  end
end
