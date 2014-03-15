class Api::V1::AddressesController < ApplicationController

  def index
    render json: Address.all, each_serializer: Api::V1::AddressSerializer, root: :addresses
  end

  def show
    render json: Address.find_by(id: params[:id]), serializer: Api::V1::AddressSerializer, root: :addresses
  end

end

