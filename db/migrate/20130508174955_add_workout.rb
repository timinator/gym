class AddWorkout < ActiveRecord::Migration
  def up
    create_table :workouts do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :workflow_state
    end
  end

  def down
    drop_table :workouts
  end
end
