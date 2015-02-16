class LineItemsController < ApplicationController

include CurrentCart

before_action :set_cart, only: [:create]

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.create(product: product)
    redirect_to carts_path
  end

  def destroy
    line_item = LineItem.find(params[:id])
    line_item.destroy

    respond_to do |format|
      format.html { redirect_to(carts_path) }
      format.xml  { head :ok }
    end

  end

end
