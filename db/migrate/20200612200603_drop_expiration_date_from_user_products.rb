class DropExpirationDateFromUserProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_products, :expiration_date
  end
end
