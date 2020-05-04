Users
  - has many products through UserProducts

  name
  email
  password


UserProducts
  - belongs to a User
  - belongs to a Product

  user_id
  product_id
  opened date
  expiration date
  comments
  bought at
  website link?
  price

  <!-- rails generate resource UserProducts user_id:integer product_id:integer opened_at:date expiration_date:date comments:text bought_at:string website:string prince:decimal --no-test-framework -->

Brands
  - has many Products
  - has many  Categories through Products

  name

  <!-- rails generate resource Brands name --no-test-framework -->

Categories
  - has many Products
  - has many Brands through Products  

  name

  <!-- rails generate resource Categories name --no-test-framework -->

Products
  - belongs to a Brand
  - belongs to a Category
  - has many users through UserProducts

  name
  brand_id
  category_id

  <!-- rails generate resource Products name:string brand_id:integer category_id:integer --no-test-framework -->

User stories

As a user:
- I can create an account.
- I can log in into my account.
- I can logout of my account.
- I can create enter brands.
- I can enter categories.
- I can add products to my collection with a brand and a category.
-
