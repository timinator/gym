class AddMessagesTable < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.integer :s_id
  		t.integer :r_id
  		t.text :content
  		t.boolean :read_flag, :default => false
  		t.boolean :sms, :default => false
  		t.timestamps
  	end
  end
end
