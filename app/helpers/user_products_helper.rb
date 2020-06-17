module UserProductsHelper

  def user_products_message(counter)
    case counter
    when 0
      "You don't have any products in your collection."
    when 1
      "You have one product in your collection!"
    else
      "You have #{counter} products in your collection!"
    end
  end

  def value_of_collection (user_products)
    total_value = user_products.reduce(0) {|sum, user_product| sum + user_product.price }
    "The total value of your collection is $%.2f" % total_value
  end

end
