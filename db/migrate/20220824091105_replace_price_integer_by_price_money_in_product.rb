class ReplacePriceIntegerByPriceMoneyInProduct < ActiveRecord::Migration[7.0]
  def change
    change_column(:products, :price_cents, :money)
  end
end
