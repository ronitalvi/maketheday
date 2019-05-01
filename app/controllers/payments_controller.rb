class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!

  before_action :set_order

  def new
     authorize @order
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents,
      description:  "Payment for teddy #{@order.satinal_sku} for order #{@order.id}",
      currency:     @order.amount.currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)
    authorize @order
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    authorize @order

  end
end
    # @products = policy_scope(Order).where(state: 'pending', user_id: current_user.id).find(params[:order_id])
