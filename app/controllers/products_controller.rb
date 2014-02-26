class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    
end