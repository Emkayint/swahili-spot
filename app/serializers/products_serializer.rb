class ProductsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount
end
