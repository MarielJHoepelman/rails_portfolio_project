class UserProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

   scope :product_from_category, ->(user_id, category_id) { joins(:product).where("user_products.user_id=? and products.category_id=?", user_id, category_id) }

  # def self.product_from_category(user_id, category_id)
  #   joins(:product).where("user_products.user_id=? and products.category_id=?", user_id, category_id)
  # end
end
