require 'rails_helper'

RSpec.describe 'Signing in', type: :feature do
  scenario 'valid credentials' do
    user = create(:user)

    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    expect(page).to have_content('People')
  end
end
