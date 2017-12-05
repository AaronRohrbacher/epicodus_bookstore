class Accounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
    t.column :address_one, :string
    t.column :address_two, :string
    t.column :city, :string
    t.column :state, :string
    t.column :zip, :integer
    t.column :phone, :integer
    t.column :active, :boolean
    t.column :user_id, :integer
    t.timestamps
    end
  end
end
