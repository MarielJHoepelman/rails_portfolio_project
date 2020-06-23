# Specifications for the Rails Assessment

Specs:
 - [x] Using Ruby on Rails for the project
 - [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    *A category has many products.*
 - [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    *A Product belongs to a Category. A UserProduct list belongs to a user and to a Product.*
 - [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
     *A User has many products through UserProduct. A product has many users through UserProduct.*
 - [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    *A User has many products through UserProduct. A product has many users through UserProduct.*
 - [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    *UserProduct list has the submittable attribute 'price'.*
 - [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
 - [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    *UserProduct model includes product_from_category scope method that receives two arguments user_id and category_id and joins the product table and returns all the products for the current user from the category passed.*
 - [x] Include signup (how e.g. Devise)
 - [x] Include login (how e.g. Devise)
 - [x] Include logout (how e.g. Devise)
 - [x] Include third party signup/login (how e.g. Devise/OmniAuth)
   *Users are able to signup and login with Google (OmniAuth)*
 - [x] Include nested resource show or index (URL e.g. users/2/recipes)
 - [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 - [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:

 - [x] The application is pretty DRY
 - [x] Limited logic in controllers
 - [x] Views use helper methods if appropriate
 - [x] Views use partials if appropriate
