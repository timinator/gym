class AddWorkoutJoinTable < ActiveRecord::Migration
  def up
    create_table :workouts_users do |t|
      t.integer :workout_id
      t.integer :user_id
    end
  end

  def down
    drop_table :workouts_users
  end
end
