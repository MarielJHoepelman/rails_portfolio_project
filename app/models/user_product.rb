class UserProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :price, presence: true
  validates :price, numericality: true

  scope :product_from_category, ->(user_id, category_id) do
    joins(:product).where("user_products.user_id=? and products.category_id=?", user_id, category_id)
  end
end
