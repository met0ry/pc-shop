class OrdersController < ApplicationController
  def index
    Order.where(user: current_user)
  end

  def create
    Order.create(user: current_user, items: current_user.cart.items)

    current_user.cart.update(items: [])
    redirect_to orders_path
  end
end
