class PaysController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @pay = Pay.find(params[:id])
  end
  
  def edit
    @users = User.all
    @user = User.find(params[:id])
    @pay = Pay.find(params[:id])
    if params[:first_day].nil?
      @first_day = Date.today.beginning_of_month
    else
      @first_day = Date.parse(params[:first_day])
    end
    @last_day = @first_day.end_of_month
    (@first_day..@last_day).each do |day|
      unless @user.pays.any? {|pay| pay.worked_on == day}
        record = @user.pays.build(worked_on: day)
        record.save
      end
    end
    @dates = @user.pays.where('worked_on >= ? and worked_on <= ?', @first_day, @last_day).order('worked_on')
  end
  
  
  def update
    @user = User.find(params[:id])
    @pay = Pay.find(params[:id])
    if pay_params.each do |id,item|
      pay = Pay.find(id)
      pay.update_attributes!(item)
      flash[:success] = "更新しました。"
      redirect_to @user
    end
    else
      redirect_to @user
    end
  end
  
  private
  
  def pay_params
    params.permit(pays: [:started,:finished,:nextday_box,:salary])[:pays]
  end
end


# on.click