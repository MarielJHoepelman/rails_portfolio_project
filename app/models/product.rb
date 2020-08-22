class Product < ApplicationRecord
  belongs_to :category
  
  has_many :user_products
  has_many :users, through: :user_products

  validates :name, presence: true
end
