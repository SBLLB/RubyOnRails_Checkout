require 'rails_helper'

context 'On the homepage' do
  it 'the products should be displayed' do
    Product.create(product_code: 1, product_name: 'Lavender Heart', price: 9.95)
    visit '/'
    expect(page).to have_content 'Lavender Heart'
  end
end

