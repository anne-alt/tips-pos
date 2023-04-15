class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.integer :total
      t.integer :cash
      t.integer :mpesa
      t.integer :quantity
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
