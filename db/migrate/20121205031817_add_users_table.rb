class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :description
      t.string :gender
      t.float :height
      t.float :weight
      t.float :workout_goal
      t.float :body_fat
      t.date :birthdate
      t.string :company
      t.integer :company_id
      t.string :phone
      t.timestamps
    end
  end
end


