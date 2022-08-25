class RemovePricefromOrdersAndProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :price
    remove_column :orders, :price
  end
end
