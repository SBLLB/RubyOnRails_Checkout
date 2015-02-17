class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def unit_price
    product.price
  end


end
