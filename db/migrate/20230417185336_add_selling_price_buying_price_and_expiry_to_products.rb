class AddSellingPriceBuyingPriceAndExpiryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :selling_price, :integer
    add_column :products, :buying_price, :integer
    add_column :products, :expiry, :date
  end
end
