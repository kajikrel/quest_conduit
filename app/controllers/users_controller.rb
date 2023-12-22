class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      flash[:success] = "登録が完了しました！"
      log_in @user
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    # @articles = @user.articles.paginate(page: params[:page])
    @articles = @user.articles
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
  
end