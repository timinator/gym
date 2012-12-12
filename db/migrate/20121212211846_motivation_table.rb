class MotivationTable < ActiveRecord::Migration
  def change
    create_table :motivations do |t|
      t.integer :rating, :default => 1 # 1 - 3, 1 is first motivator, 3 is last motivator
      t.string :type # cardio, weights, toning
      t.string :quote
      t.timestamps
    end
  end
end