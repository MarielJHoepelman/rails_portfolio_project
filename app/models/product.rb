class Product < ApplicationRecord
  belongs_to :category
  has_many :users, through: :user_products
end
