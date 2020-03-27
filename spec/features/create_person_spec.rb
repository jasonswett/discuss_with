require 'rails_helper'

RSpec.describe 'Creating a person', type: :feature do
  scenario 'valid inputs' do
    login_as(create(:user))
    visit new_person_path

    fill_in 'Name', with: 'Greg'
    click_on 'Create Person'

    expect(page).to have_css('h1', text: 'People')
    expect(page).to have_content('Greg')
  end
end
