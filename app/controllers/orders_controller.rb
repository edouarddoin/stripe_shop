class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    order = Order.create!(product: product, product_sku: product.sku, amount_cents: product.price_cents, status_id: 7, user: current_user)
    Stripe.api_key = 'sk_test_51LY5hvLeVNdCkyHLNFCj4Yodi1RYADinhP6yrTAOxloa4XQKPk5OnV7sEXMWtDfrDUKx2HY6jSkXrja0bca9QhMW00FgqXiDRf'

    session = Stripe::Checkout::Session.create({
      success_url: order_url(order),
      cancel_url: order_url(order),
      line_items:[ quantity: 1,
        price_data:
          {
            currency: 'eur',
            product: 'prod_MJGZovdFwSQoEs',
            unit_amount: 1000
          },
      ],
      mode: 'payment',
      }
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
