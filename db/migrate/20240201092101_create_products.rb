class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :price
      t.string :category
      t.string :size
      t.string :color
      t.integer :quantity

      t.timestamps
    end
  end
end
