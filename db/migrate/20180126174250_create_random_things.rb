class CreateRandomThings < ActiveRecord::Migration[5.1]
  def change
    create_table :random_things do |t|
      t.integer :top
      t.integer :left
      t.integer :height
      t.integer :width
      t.string :color
      t.integer :rad

      t.timestamps
    end
  end
end
