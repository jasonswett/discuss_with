class CreatePeopleUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :people_users do |t|
      t.references :person, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :people_users, %i[person_id user_id], unique: true
  end
end
