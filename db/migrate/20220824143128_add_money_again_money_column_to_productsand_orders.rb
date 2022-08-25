class AddMoneyAgainMoneyColumnToProductsandOrders < ActiveRecord::Migration[7.0]
  def change
    add_monetize :products, :price, currency: { present: false }
    add_monetize :orders, :amount, currency: { present: false }
  end
end