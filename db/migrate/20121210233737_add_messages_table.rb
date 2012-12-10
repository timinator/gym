class AddMessagesTable < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.integer :s_id
  		t.integer :r_id
  		t.text :content
  		t.boolean :read_flag
  		t.boolean :sms
  		t.timestamps
  	end
  end
end
