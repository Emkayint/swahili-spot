class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :phone, :role
  # has_many :orders
  # has_many :products, through: :orders
end
