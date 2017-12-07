class Book < ActiveRecord::Base
  has_many :order_items
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, :presence => true
  validates :description, :presence => true
  validates :author, :presence => true
  validates :contributor, :presence => true
  validates :image, :presence => true
  validates :publisher, :presence => true
  validates :pages, :presence => true
  validates :amazon_product_url, :presence => true
  validates :price, :presence => true

  def self.search(book)
    where("title ILIKE ? OR author ILIKE ? ", "%#{book}%", "%#{book}%")
  end
end
