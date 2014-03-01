class ShoppingCartsController < ApplicationController
  
  def add_item
    @product = Product.find(params[:product_id])
    current_cart(create_if_necessary: true).add(@product, @product.price)
    redirect_to cart_path
  end

  def show
    @cart = current_cart

    #warning : we use subtotal because the price should be displayed with taxe included in france. To be modified.
    @total = @cart.subtotal
  end  

  def empty
    current_cart.clear
    redirect_to cart_path
  end

end