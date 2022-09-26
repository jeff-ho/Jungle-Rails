require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before(:each) do
      @category = Category.new(name: "Plant")
      @product = Product.new(name: "Flower", price_cents: 1000, quantity: 5, category_id: @category.id )
    end

    
    it 'should validate product is created' do
       
      expect(@product).to be_present

    end

    it 'should validate product name' do
      @product.name = nil
      @product.save
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should validate product price' do
      @product.price_cents = nil
      @product.save
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it 'should validate product quantity' do
      @product.quantity = nil
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should validate product category' do
      @product.category_id = nil
      @product.save
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end

