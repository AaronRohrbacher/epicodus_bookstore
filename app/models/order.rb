class Order < ActiveRecord::Base
  has_many :order_items
  before_save :update_total
  before_create :update_status

  # validates :total_price, :presence => true

  def calculate_total
    self.order_items.collect { |item| item.book.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
