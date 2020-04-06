class User < ApplicationRecord
  has_many :products, through: :user_products
  has_secure_password
end
