class ReaddName < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
  end
end
