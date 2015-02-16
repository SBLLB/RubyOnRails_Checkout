require 'rails_helper'

context "When viewing the cart" do
  it "each line item should have an 'remove from cart' button" do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart'
    expect(page).to have_selector(:link_or_button, 'Remove from Cart')
  end
end

