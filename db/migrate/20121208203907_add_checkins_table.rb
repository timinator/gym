class AddCheckinsTable < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.datetime :time
      t.string :workout_type
      t.integer :user_id
      t.timestamps
    end
  end
end
