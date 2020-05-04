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

Products
  - belongs to a category 
  - has many users through UserProducts

  name

  <!-- rails generate resource Products name:string brand_id:integer category_id:integer --no-test-framework -->

  Categories
  - has many products


  name

User stories

As a user:
- I can create an account.
- I can log in into my account.
- I can login with with my Google account.
- I can logout of my account.
- I can add products to my collection.
- I can remove products from my collection.
- I can edit the information of products in my collection.
