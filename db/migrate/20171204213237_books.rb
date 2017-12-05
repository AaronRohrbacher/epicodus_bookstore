class Books < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
    t.column :title, :string
    t.column :description, :text
    t.column :author, :string
    t.column :contributor, :string
    t.column :publisher, :string
    t.column :pages, :integer
    t.column :amazon_product_url, :string
    t.column :price, :decimal

    t.timestamps
    end
  end
end
