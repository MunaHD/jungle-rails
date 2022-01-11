require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    # can also use subject without a name (in tests put -> subject)and  the name of the calss can be described_class
    # Category.new works with nil feilds
    subject(:user) { User.create(name: "Sample", email: "sample@mail.com" ,password: "pass", password_confirmation: "pass")}
    # subject(:new_user) { described_class.new(first_name: "First", last_name: "Last", email: "sample@mail.com" ,password: "pass", password_confirmation: "pass")}

    fit 'should validate if user is created with all fields' do
      byebug
      expect(user).to be_valid
    end

    it 'should return false if password & password_confirmation don\'t match' do
      user.password_confirmation = "not_pass"
      expect(user).not_to be_valid
    end
    
    it 'should not validate if password_confirmation is nil' do
      user.password_confirmation = nil
      user.password = "pass"

      expect(user).not_to be_valid
    end

    it 'should not validate if password is nil' do
      user.password = nil
      expect(user).not_to be_valid
    end


    it 'should not validate if name is nil' do
      user.name = nil
      expect(user).not_to be_valid
    end

    
  end
end
