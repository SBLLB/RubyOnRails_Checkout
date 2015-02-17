class CartsController < ApplicationController

include CurrentCart

before_action :set_cart

  def show
    
  end

  def destroy
    cart = Cart.find(@cart.id)
    cart.destroy
    redirect_to root_url
  end

end
