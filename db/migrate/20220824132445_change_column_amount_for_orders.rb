class ChangeColumnAmountForOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :amount, :price_cents
  end
end
