class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all.order("created_at DESC")
  end
  
  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      # 適切なエラーページにレンダリングするか、またはホームページに戻るなど、エラー処理を適切に設定します。
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "記事を更新しました"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:success] = "記事は削除されました"
     redirect_to user_path(@article.user)
  end

    private
# Strong Parametersを使用して安全に記事データを扱うためのメソッドです。
# 必要なパラメーターをここで許可してください。
def article_params
  params.require(:article).permit(:title, :description, :body)
end
  
end
