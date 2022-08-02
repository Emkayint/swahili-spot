class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  # authentication
  has_secure_password
end
