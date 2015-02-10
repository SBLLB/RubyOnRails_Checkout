class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_code
      t.integer :quantity

      t.timestamps
    end
  end
end
