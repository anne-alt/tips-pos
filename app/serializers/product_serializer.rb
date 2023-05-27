class ProductSerializer < ActiveModel::Serializer
 attributes :id, :name, :size, :quantity, :category, :selling_price
 # attributes :id
end
