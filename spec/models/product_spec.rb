require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # can also use subject without a name (in tests put -> subject)and  the name of the calss can be described_class
    # Category.new works with nil feilds
    subject(:new_product) { Product.new(name: "Sample", price_cents: 45, quantity: 60, category: Category.new)}

    
  end
end
