class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
      current_item.save
    else
      current_item = line_items.create(product_id: product_id)
    end
    current_item
  end
end
