require 'rails_helper'

context "When emptying the cart" do
  
  it "all line items in the cart should delete from view" do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    click_button 'Add to Cart'
    click_button 'Empty Cart'
    visit '/carts'
    expect(current_path).not_to have_content 'Lavender Heart'
  end
end
