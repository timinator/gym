class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :description
      t.string :gender
      t.string :height
      t.string :weight
      t.string :workout_goal
      t.string :body_fat
      t.integer :age
      t.string :company
      t.integer :company_id
      t.timestamps
    end
  end
end


