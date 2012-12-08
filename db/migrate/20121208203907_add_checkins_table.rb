class AddCheckinsTable < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.time :time
      t.string :workout_type
      t.integer :user_id
      t.timestamps
    end
  end
end
