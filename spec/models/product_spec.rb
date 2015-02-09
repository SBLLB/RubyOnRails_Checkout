require 'rails_helper'

RSpec.describe Product, :type => :model do
  
  describe 'are only validated if they have' do 

    it 'a name attributed to them' do 
      @product = Product.create(product_name: nil, product_code: 1, price: 9.95)
      expect(@product).to_not be_valid
    end

    it 'a product code attributed to them' do 
      @product = Product.create(product_name: "Grapes", product_code: nil, price: 9.95)
      expect(@product).to_not be_valid
    end

    it 'a price attributed to them' do 
      @product = Product.create(product_name: "Grapes", product_code: 1, price: nil)
      expect(@product).to_not be_valid
    end

  end

  describe 'are only validated if they have a unique' do 

    before do 
      @product = Product.create(product_name: "Grapes", product_code: 1, price: 9.95)
    end

    it 'product name' do 
      @product = Product.create(product_name: "Grapes", product_code: 2, price: 10.95)
      expect(@product).to_not be_valid
    end

    it 'product code' do 
      @product = Product.create(product_name: "Apples", product_code: 1, price: 10.95)
      expect(@product).to_not be_valid
    end

  end

end


