class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone
      t.string :description
      t.string :gender # male / female
      t.float :height
      t.float :weight
      t.string :workout_goal
      t.float :body_fat
      t.date :birthdate
      t.string :company
      t.integer :company_id
      t.timestamps
    end
  end
end


