class ReplaceTypeOfDataforMoneyinProductAndOrder < ActiveRecord::Migration[7.0]
  def change
    change_column(:products, :price_cents, :money)
    change_column(:orders, :amount, :money)
  end
end
