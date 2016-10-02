class AddArticlesCountToGeinins < ActiveRecord::Migration[5.0]
  def change
    add_column :geinins, :articles_count, :integer, default: 0
  end
end
