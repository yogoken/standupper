class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
