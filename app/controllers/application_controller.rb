class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?


  def current_cart(options = {})
    return @current_cart unless @current_cart.nil?

#si on a deja ajoute un cart en session, reserve dans rails
    if session[:cart_id]
      @current_cart = ShoppingCart.find(session[:cart_id])

# si on passe create_if_necessary dans le hash d'option. 
    elsif options[:create_if_necessary]
      @current_cart = ShoppingCart.create
      session[:cart_id] = @current_cart.id
    end

    @current_cart
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |user|
      user.permit(:first_name, :last_name, :mobile, :email, :password, :password_confirmation)
    end
  end
end
