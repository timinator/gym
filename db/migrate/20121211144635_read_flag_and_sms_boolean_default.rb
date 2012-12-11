class ReadFlagAndSmsBooleanDefault < ActiveRecord::Migration
  def change
    change_column :messages, :read_flag, :boolean, :default => false
    change_column :messages, :sms, :boolean, :default => false
  end
end
