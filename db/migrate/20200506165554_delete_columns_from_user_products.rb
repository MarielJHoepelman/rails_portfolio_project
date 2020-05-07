class DeleteColumnsFromUserProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_products, :opened_at
    remove_column :user_products, :comments
    remove_column :user_products, :bought_at
    remove_column :user_products, :website
  end
end
