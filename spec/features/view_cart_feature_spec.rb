require 'rails_helper'

feature "When viewing the cart" do

  context "each product" do 

    before do 
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      click_button 'Add to Cart'
    end 

    it "should have an 'remove from cart' button" do
      expect(page).to have_selector(:link_or_button, 'Remove from Cart')
    end

    it "should only list once with the quantity of said item" do 
      visit '/'
      click_button 'Add to Cart'
      expect(page).to have_content('Quantity: 2')
    end

    it "should display an item unit price" do 
      expect(page).to have_content('Unit Price: £9.95')
    end 

    it "should display a total item price" do 
      visit '/'
      click_button 'Add to Cart'
      expect(page).to have_content('Total Item Price: £19.90')
    end 

  end

  context "it should display" do 
    it "a 'Continue Shopping' button" do
      visit '/carts'
      expect(page).to have_selector(:link_or_button, 'Continue Shopping')
    end
    
    it "a 'Your Shopping Cart Is Empty' when the cart's empty" do
      visit '/carts'
      expect(page).to have_content('Your Shopping Cart Is Empty')
    end

    it "an 'Empty Cart' button" do
      visit '/carts'
      expect(page).to have_selector(:link_or_button, 'Empty Cart')
    end
  end

end

