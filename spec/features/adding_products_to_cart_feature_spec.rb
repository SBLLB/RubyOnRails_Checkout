require 'rails_helper'

context 'Each product on the homepage' do
  it "should have an 'add to cart' button" do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    expect(page).to have_selector(:link_or_button, 'Add to Cart')
  end
end

context "When adding an item to the cart" do
  
  it "the cart should update " do
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
