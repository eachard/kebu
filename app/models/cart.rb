class Cart < ActiveRecord::Base
  acts_as_shopping_cart_using :product
end
