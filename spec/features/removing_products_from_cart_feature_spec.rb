require 'rails_helper'

context "When removing an item from the cart" do
  
  it "the cart line items should update " do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart'
    click_button 'Remove from Cart'
    expect(current_path).not_to have_content 'Lavender Heart'
  end
end
