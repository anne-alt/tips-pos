class ReceiptSerializer < ActiveModel::Serializer
  attributes :user_id, :total, :cash, :mpesa, :quantity, :product_id, :created_at, :updated_at, :customer_name
end
