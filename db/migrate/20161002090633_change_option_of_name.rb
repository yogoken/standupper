class ChangeOptionOfName < ActiveRecord::Migration[5.0]
  def up
    change_column :geinins, :name, :string, null: false, default: 'unknown geinin'
  end
  def down
    change_column :geinins, :name, :string, null: true
  end
end
