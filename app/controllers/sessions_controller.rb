class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # 用户登陆成功, 跳转到用户的详细页面
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password combination" # 不完全正确
      render 'new'
    end
  end

  def destroy

  end
end