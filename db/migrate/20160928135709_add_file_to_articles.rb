class AddFileToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :file, :string, index: true, default: "sample.jpg"
  end
end
