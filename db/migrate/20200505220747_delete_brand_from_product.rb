class DeleteBrandFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :brand_id
  end
end
