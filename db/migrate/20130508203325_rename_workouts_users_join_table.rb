class RenameWorkoutsUsersJoinTable < ActiveRecord::Migration
  def change
    rename_table :workouts_users, :users_workouts
  end
end
