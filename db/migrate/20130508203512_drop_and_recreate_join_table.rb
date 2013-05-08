class DropAndRecreateJoinTable < ActiveRecord::Migration
  def change
    drop_table :users_workouts
    create_table :users_workouts, :id => false do |t|
      t.integer :workout_id
      t.integer :user_id
    end
  end
end
