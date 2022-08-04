class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  #validations
  # validates :username, uniqueness: true, presence: true
  # validates :password, presence: true, length: {in: 8..20} 
  # validates :phone, uniqueness: true, numericality: { only_integer: true }, length: { is: 9}
  # authentication
  has_secure_password
end
