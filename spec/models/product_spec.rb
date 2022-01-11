require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # can also use subject without a name (in tests put -> subject)and  the name of the calss can be described_class
    # Category.new works with nil feilds
    subject(:new_product) { Product.new(name: "Sample", price_cents: 45, quantity: 60, category: Category.new)}
    
    it 'should be valid with all feilds' do
      expect(new_product).to be_valid
      expect(subject.errors.full_messages).to eql([])
    end

    it 'should not be valid without name' do
      new_product.name = nil
      expect(new_product).not_to be_valid
      expect(subject.errors.full_messages).to eql(["Name can't be blank"])
    end
    it 'should not be valid without price' do
      new_product.price_cents = nil
      expect(new_product).not_to be_valid
      expect(subject.errors.full_messages).to eql(["Price cents is not a number", "Price is not a number", "Price can't be blank"])
    end

    it 'should not be valid without quantity' do
      new_product.quantity = nil
      expect(new_product).not_to be_valid
      expect(subject.errors.full_messages).to eql(["Quantity can't be blank"])
    end

    it 'should not be valid without category' do
      new_product.category = nil
      expect(new_product).not_to be_valid
      expect(subject.errors.full_messages).to eql(["Category can't be blank"])
    end
    
  end
end
