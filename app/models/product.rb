class Product < ActiveRecord::Base
  validates_presence_of :product_name, :product_code, :price
  validates_uniqueness_of :product_name, :product_code
end
