class ProductSerializer < ActiveModel::Serializer
 attributes :id, :name, :size, :quantity, :category, :selling_price, :buying_price, :expiry
 # attributes :id
end
