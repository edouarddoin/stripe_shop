class OrdersController < ApplicationController

  def new
    @order = Order.new(order_params)
  end
  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
    raise
    # faire un test de creation de commande via Rails C
    @order.user = current_user
    @order.status_id = 1
    if @order.save
      redirect_to order_path(@order)
      flash[:notice] = 'Votre commande est bien validée'
      # une fois que tout fonctionne intégré le paiement stripe
      @product.stock -= 1
    else
      render :new, status: :unprocessable_entity
      flash[:notice] = "Un problème est survenu lors de votre achat"
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def delete
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:product_id)
  end

end
