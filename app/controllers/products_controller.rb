class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  @products = []

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :stock)
  end
end
