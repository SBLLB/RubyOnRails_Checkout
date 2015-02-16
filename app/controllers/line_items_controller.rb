class LineItemsController < ApplicationController

include CurrentCart

before_action :set_cart, only: [:create]

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.create(product: product)
    redirect_to carts_path(product)
  end

  def destroy

  end

end
