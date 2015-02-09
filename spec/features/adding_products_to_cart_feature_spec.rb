require 'rails_helper'

context 'Each product on the homepage' do

  it "should have an 'add to cart' button" do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    expect(page).to have_selector(:link_or_button, 'Add to Cart')
    # expect(page).to have_selector("input[type=submit][value='Add to Cart']")
  end

end

