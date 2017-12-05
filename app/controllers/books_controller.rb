class BooksController < ApplicationController
  def index
    @books = Book.all
    @order_item = current_order.order_items.new
  end
end
