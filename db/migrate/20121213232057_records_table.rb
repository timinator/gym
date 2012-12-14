class RecordsTable < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.float :weight # pounds
      t.float :run # #.## minutes
      t.float :pushups # number of pushups per minute
      t.integer :user_id
      t.timestamps
    end
  end
end
