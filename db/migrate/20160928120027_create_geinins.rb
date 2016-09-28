class CreateGeinins < ActiveRecord::Migration[5.0]
  def change
    create_table :geinins do |t|

      t.timestamps
    end
  end
end
