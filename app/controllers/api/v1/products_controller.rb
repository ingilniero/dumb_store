class Api::V1::ProductsController < ApplicationController
  before_action :find_product, only: [ :show, :destroy, :update ]

  def index
    render json: Product.all, each_serializer: Api::V1::ProductSerializer, root: :products
  end

  def show
    render json: @product, serializer: Api::V1::ProductSerializer, root: :products
  end

  def create
    render json: Product.create(product_params), serializer: Api::V1::ProductSerializer, root: :products
  end

  def destroy
    render json: @product.destroy, serializer: Api::V1::ProductSerializer, root: :products
  end

  def update
    @product.update_attributes(product_params)

    render json: @product, serializer: Api::V1::ProductSerializer, root: :products
  end

  private

  def find_product
    @product = Product.find_by(id: params[:id])
  end

  def product_params
    params.require(:product).permit!
  end
end
