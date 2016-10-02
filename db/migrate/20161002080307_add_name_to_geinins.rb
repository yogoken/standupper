class AddNameToGeinins < ActiveRecord::Migration[5.0]
  def change
    add_column :geinins, :name, :string
  end
end
