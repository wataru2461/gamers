class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!, except: [:sessions]
  
  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order_details = OrderDetail.where(order_id: params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order.id)
  end

  private
  def order_params
    params.require(:order).permit(:payment_method, :post_code, :address, :name, :customer_id, :billing_amount, :status, :postage)
  end
end
