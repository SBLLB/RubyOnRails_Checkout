require 'rails_helper'

context "When adding an item to the cart" do
  
  it "the cart line items should update " do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart'
    expect(page).to have_content 'Lavender Heart'
  end

  it "you should be redirected to your cart summary" do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart' 
    expect(current_path).to have_content 'cart'
  end

end
