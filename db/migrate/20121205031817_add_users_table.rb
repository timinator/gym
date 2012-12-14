class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone
      t.string :gender # male / female
      t.string :workout_goal
      t.date :birthdate
      t.string :company
      t.integer :company_id
      t.timestamps
    end
  end
end


