class Book < ActiveRecord::Base
  has_many :order_items

  validates :title, :presence => true
  validates :description, :presence => true
  validates :author, :presence => true
  validates :contributor, :presence => true
  validates :book_image, :presence => true
  validates :publisher, :presence => true
  validates :pages, :presence => true
  validates :amazon_product_url, :presence => true
  validates :price, :presence => true
end
