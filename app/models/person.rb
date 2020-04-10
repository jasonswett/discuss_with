class Person < ApplicationRecord
  has_many :people_users, dependent: :destroy
end
