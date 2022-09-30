class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(status_id: 8).find(params[:order_id])
  end
end
