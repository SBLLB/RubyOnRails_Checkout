class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_code
      t.decimal :price, default: 0, precision: 8, scale: 2

      t.timestamps
    end
  end
end
