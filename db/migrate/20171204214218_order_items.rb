class OrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
    t.column :quantity, :integer
    t.column :book_id, :integer
    t.column :order_id, :integer

    t.timestamps
    end
  end
end
