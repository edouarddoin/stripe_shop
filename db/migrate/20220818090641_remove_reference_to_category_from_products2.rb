class RemoveReferenceToCategoryFromProducts2 < ActiveRecord::Migration[7.0]
  def change
    remove_reference :products, :category
  end
end
