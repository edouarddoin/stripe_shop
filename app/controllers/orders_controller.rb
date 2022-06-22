class OrdersController < ApplicationController
  def create
    # aller chercher dans la view les éléments dont on a besoin pour créer le produit
    Order.create(user_id, products_id)
  end

  def update
    Order.find_by_id
  end

  def delete
  end

  def validate
  end
end
