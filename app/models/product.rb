class Product < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  # By default, always show non-hidden products
  default_scope { where(available: true) }

=begin
  - Get all non hidden products:
    Product.all

  - Get all products without default scope:
    Product.unscoped.all
=end

end
