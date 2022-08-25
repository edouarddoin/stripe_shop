class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :status, null: false, foreign_key: true
      t.string :product_sku
      t.money :amount, currency: {present: false}
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
