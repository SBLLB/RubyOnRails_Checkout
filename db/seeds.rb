require 'csv'

CSV.foreach("product_data.csv") do |col|
  Product.create(
    :product_code => col[0],
    :product_name => col[1],
    :price => col[2]
    )
end