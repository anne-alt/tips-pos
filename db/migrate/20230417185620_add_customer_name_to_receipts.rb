class AddCustomerNameToReceipts < ActiveRecord::Migration[7.0]
  def change
    add_column :receipts, :customer_name, :string
  end
end
