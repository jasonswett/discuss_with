require 'rails_helper'

RSpec.describe 'Viewing people', type: :feature do
  scenario 'viewing' do
    login_as(create(:user))
    person = create(:person)

    visit people_path
    expect(page).not_to have_content(person.name)
  end
end
