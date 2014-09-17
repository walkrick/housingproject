require 'rails_helper'
require 'capybara/rails'


feature 'Auth' do

  scenario 'Users can login and out' do

    visit root_path
    click_on "Login"
    expect(page).to have_content("Username" "Password")

    fill_in "Username", with: "Some User"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Some User")
  end

end
