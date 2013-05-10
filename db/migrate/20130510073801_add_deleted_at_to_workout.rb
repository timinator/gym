class AddDeletedAtToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :deleted_at, :datetime
  end
end
