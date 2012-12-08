class AddCompaniesTable < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :primary_name
      t.string :primary_contact
      t.text :memo
      t.timestamps
    end
  end
end
