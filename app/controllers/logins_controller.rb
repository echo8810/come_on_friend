class LoginsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(account_name: params[:session][:account_name])
    if user && user.authenticate(params[:session][:password])
      sing_in(@user)
      #後ほどリダイレクト先をインデックスへ変更
      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url, info: 'ログアウトしました'
  end

  private
  def log_in(user)
    session[:user_id] = user.id
  end

  private
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
