class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :user_id, :quantity
  belongs_to :user
  belongs_to :product
end
