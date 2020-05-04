class DropBrands < ActiveRecord::Migration[6.0]
  def change
    drop_table :brands
  end
end
