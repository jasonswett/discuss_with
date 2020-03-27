require 'rails_helper'

RSpec.describe PeopleUser, type: :model do
  describe 'uniqueness' do
    it 'works' do
      user = create(:user)
      person = create(:person)
      user.people << person

      people_user = PeopleUser.new(user: user, person: person)
      expect(people_user).not_to be_valid
    end
  end
end
