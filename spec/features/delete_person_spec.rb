require 'rails_helper'

RSpec.describe 'Deleting a person', type: :feature, js: true do
  scenario 'deleting' do
    user = create(:user)
    person = create(:person)
    user.people << person

    login_as(user)

    visit people_path

    accept_confirm do
      click_on 'Destroy'
    end

    expect(page).not_to have_content(person.name)
  end
end
