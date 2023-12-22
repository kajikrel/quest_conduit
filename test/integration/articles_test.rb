require "test_helper"

class ArticlesTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one) # 修正: テスト用の記事を設定
  end

  test "should index page" do
    get root_path
    assert_select "a[href=?]", user_path(@article.user)
    assert_select "a[href=?]", article_path(@article), count: 1
  end
end
