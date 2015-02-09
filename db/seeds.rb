require 'csv'

CSV.foreach("product_data.csv") do |col|
  Product.find_or_create_by(
    :product_code => col[0],
    :product_name => col[1],
    :price => col[2]
    )
end