class CreateRecepits < ActiveRecord::Migration[7.1]
  def change
    create_table :receipts do |t|
      t.string :cname
      t.string :cphone
      t.string :caddress
      t.string :cemail
      t.string :note
      t.string :payment_method
      t.string :total
      t.string :receipt_status
      t.string :discount
      
      t.timestamps
    end
  end
end
