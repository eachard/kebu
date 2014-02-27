class ShoppingCartsController < ApplicationController
  
  def add_item
    @product = Product.find(params[:product_id])
    current_cart(create_if_necessary: true).add(@product, @product.price)
    redirect_to cart_path
  end

  def show
    @cart = current_cart
  end  
end