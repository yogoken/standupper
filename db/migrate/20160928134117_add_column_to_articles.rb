class AddColumnToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :geinin, foreign_key: true, index: true
    add_column :articles, :title, :string
    add_column :articles, :body, :text
  end
end
