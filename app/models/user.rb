class User < ApplicationRecord
  has_many :products, through: :user_products
  
  has_secure_password

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
end
