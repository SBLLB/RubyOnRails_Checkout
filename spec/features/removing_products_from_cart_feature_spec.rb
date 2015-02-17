require 'rails_helper'

context "When removing an item from the cart" do

  before do 
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart'
  end

  it "the cart line items should update " do
    click_button 'Remove from Cart'
    expect(page).not_to have_content 'Lavender Heart'
  end
end
