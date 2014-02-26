class Product < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  acts_as_shopping_cart_item_for :cart
  #shopping card gem
  acts_as_shopping_cart_using :products
end
