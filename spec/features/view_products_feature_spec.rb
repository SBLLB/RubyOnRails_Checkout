require 'rails_helper'

feature 'When browsing on the homepage' do 

  context 'each product' do
    it "should have an 'add to cart' button" do
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      expect(page).to have_selector(:link_or_button, 'Add to Cart')
    end
  end

  context 'all product' do
    it ' names should be displayed' do
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      expect(page).to have_content 'Lavender Heart'
    end

    it 'prices should be displayed' do
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      expect(page).to have_content '£9.95'
    end

  end
end

