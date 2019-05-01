class OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    satinal = Satinal.find(params[:satinal_id])
    order = Order.create!(satinal_sku: satinal.sku, amount: satinal.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
    authorize order
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end
end
