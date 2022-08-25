class RenameColumnPriceCentsforOrdersAndProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :price_cents, :price
    rename_column :products, :price_cents, :price
  end
end
