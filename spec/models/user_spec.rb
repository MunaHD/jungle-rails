require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    # can also use subject without a name (in tests put -> subject)and  the name of the calss can be described_class
    # Category.new works with nil feilds
    subject(:user) { described_class.new(name: "Sample", email: "sample@mail.com" ,password: "password", password_confirmation: "password")}

    it 'should validate if user is created with all fields' do
      expect(user).to be_valid
    end
    it 'should return false if password & password_confirmation don\'t match' do
      user.password_confirmation = "not_pass"
      expect(user).not_to be_valid
    end
    it 'should not validate if password_confirmation is nil' do
      user.password_confirmation = nil
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


  describe '.authenticate_with_credentials' do
    subject(:new_user) { described_class.new(name: "First", name: "Last", email: "sample@mail.com" ,password: "password", password_confirmation: "password")}
    


    it 'should find email even with extra white space' do
      new_user.save
      expect(User.authenticate_with_credentials("  sample@mail.com  ", "password")).not_to be_nil
    end
    
    it 'should find email even with  wrong case' do
      new_user.save
      expect(User.authenticate_with_credentials("Sample@MAIL.com", "password")).not_to be_nil
    end
  end

end
