class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def unit_price
    product.price
  end

  def total_line_price
    self.unit_price * self.quantity
  end


end
