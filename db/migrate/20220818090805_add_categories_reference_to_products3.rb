class AddCategoriesReferenceToProducts3 < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :categories
  end
end
