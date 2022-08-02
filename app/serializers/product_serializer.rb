class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount, :image, :price
end
