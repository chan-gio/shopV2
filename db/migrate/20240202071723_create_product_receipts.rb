class CreateProductReceipts < ActiveRecord::Migration[7.1]
  def change
    create_table :product_receipts do |t|
      t.belongs_to :product
      t.belongs_to :receipt
      t.integer :quantity
        
      t.timestamps
    end
  end
end
