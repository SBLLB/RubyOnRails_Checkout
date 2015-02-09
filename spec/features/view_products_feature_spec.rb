require 'rails_helper'

feature 'When browsing' do 
  context 'on the homepage' do
    it 'all products names should be displayed' do
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      expect(page).to have_content 'Lavender Heart'
    end

    it 'all products prices should be displayed' do
      Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
      visit '/'
      expect(page).to have_content '£9.95'
    end

  end
end

