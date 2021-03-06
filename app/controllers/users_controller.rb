class UsersController < ApplicationController
  
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_to_homepage
  before_action :logged_in_user, only: [:show,:edit,:update,:destroy]
  before_action :correct_user,   only: [:edit,:update,:show]
  before_action :admin_user,     only: [:destroy,:index]
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @salarys = Pay.all
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
    @workdays = @dates.where.not(finished_a: nil).count
    @total_month_salary = @dates.sum(:salary)
    @total_salary = @salarys.sum(:salary)
    
    @personal = {'name' => 'Tokyo'}
    
    respond_to do |format|
      format.html
      format.json {render :json => @personal}
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "新規作成に成功しました。"
      redirect_to @user
    else
      render :new
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "削除しました。"
    redirect_to users_url
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "ユーザー情報を更新しました。"
      redirect_to @user
    else
      render :edit
    end
  end
  
  def destroy
    @user = User.find(params[:id]).destroy
    flash[:danger] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation,:recharge,:basic_salary,:night_salary)
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください"
      redirect_to login_url
    end
  end
  
  def correct_user
    @user = User.find(params[:id])
    unless current_user?(@user) || current_user.admin?
      flash[:danger] = "他人のデータは観覧できません。"
      redirect_to(root_url) 
    end
  end
  
  def admin_user
    unless current_user.admin?
      flash[:danger] = "管理者のみ閲覧可能ページです。"
      redirect_to root_url
    end
  end
  
  def redirect_to_homepage
    flash[:danger] = "ユーザーデータが存在しません"
    redirect_to :root
  end
end
