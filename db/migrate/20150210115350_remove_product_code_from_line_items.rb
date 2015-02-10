class RemoveProductCodeFromLineItems < ActiveRecord::Migration
  def change
    remove_column :line_items, :product_code, :integer
  end
end
