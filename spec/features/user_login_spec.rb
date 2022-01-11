require 'rails_helper'

RSpec.feature "UserLogins", type: :feature do
  

   # SETUP
   before :each do
    @user = User.create!( name: 'Sample', email: 'sample@mail.com', password: 'password', password_confirmation: 'password')
  end

  scenario "They see all products" do
    # ACT
    visit "/login"

    within('form') do 
      fill_in :email, with: @user.email
      fill_in :password, with: @user.password
      click_button 'Submit'
    end

    # DEBUG 
    #save_screenshot

    # VERIFY
    expect(page).to have_text 'Logout'
  end
  
end
