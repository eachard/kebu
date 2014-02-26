class Product < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #shopping card gem
  acts_as_shopping_cart_using :products
end

class Product < ActiveRecord::Base
  acts_as_shopping_cart_item_for :cart
end