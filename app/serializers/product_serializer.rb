class ProductSerializer < ActiveModel::Serializer
 attributes :name, :size, :quantity, :category, :selling_price
 # attributes :id
end
