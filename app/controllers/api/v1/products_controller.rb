class Api::V1::ProductsController < ApplicationController

  def index
    render json: Product.all, each_serializer: Api::V1::ProductSerializer, root: :products
  end

  def show
    render json: Product.find_by(id: params[:id]), serializer: Api::V1::ProductSerializer, root: :products
  end

  def create
    render json: Product.create(product_params), serializer: Api::V1::ProductSerializer, root: :products
  end

  private

  def product_params
    params.require(:product).permit!
  end
end
