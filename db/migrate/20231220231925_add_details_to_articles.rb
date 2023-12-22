class AddDetailsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :slug, :string
    add_column :articles, :title, :string
    add_column :articles, :description, :text
    add_column :articles, :body, :text
  end
end
