class CreateUserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_products do |t|
      t.integer :user_id
      t.integer :product_id
      t.date :opened_at
      t.date :expiration_date
      t.text :comments
      t.string :bought_at
      t.string :website
      t.decimal :price

      t.timestamps
    end
  end
end
