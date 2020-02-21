require 'rails_helper'

RSpec.describe 'Signing in', type: :feature do
  scenario 'valid credentials' do
    user = create(:user)

    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    find('.sign-in-button').click

    expect(page).to have_content('Signed in successfully', count: 1)
  end

  scenario 'invalid credentials' do
    visit root_path
    fill_in 'Email', with: ''
    fill_in 'Password', with: ''
    find('.sign-in-button').click

    expect(page).to have_content('Invalid Email or password')
  end
end
