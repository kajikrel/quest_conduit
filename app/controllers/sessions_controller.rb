class SessionsController < ApplicationController



  def new
  end

  

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session      # ログインの直前に必ずこれを書くこと
      remember user
      log_in user
      redirect_to user
    else
      flash.now[:danger] = '間違ってます！'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
