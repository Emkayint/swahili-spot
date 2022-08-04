class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :phone
  has_many :orders
  has_many :products, through: :orders
end
