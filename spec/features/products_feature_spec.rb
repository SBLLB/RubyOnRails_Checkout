require 'rails_helper'

context 'On the homepage' do
  it 'the products should be displayed' do
    Product.create(product_name: 'Lavender Heart')
    visit '/'
    expect(page).to have_content 'Lavender Heart'
  end
end

