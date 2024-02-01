class CreateRecepits < ActiveRecord::Migration[7.1]
  def change
    create_table :recepits do |t|
      t.string :cname
      t.string :cphone
      t.string :caddress
      t.string :note
      t.string :payment_method
      t.string :total

      t.timestamps
    end
  end
end
