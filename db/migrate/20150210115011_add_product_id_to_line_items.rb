class AddProductIdToLineItems < ActiveRecord::Migration
  def change
    add_reference :line_items, :product, index: true
  end
end
