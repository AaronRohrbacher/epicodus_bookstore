class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order


  def current_order
    if current_user && current_user.account.orders.any? && current_user.account.orders.last.status == "In progress"
      current_user.account.orders.last
    elsif session[:order_id]
      Order.find(session[:order_id])
    elsif current_user
      Order.new(:account_id => current_user.account.id)
    else
      Order.new
    end
  end
end
