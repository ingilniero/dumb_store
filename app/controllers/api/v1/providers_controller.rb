class Api::V1::ProvidersController < ApplicationController

  def index
    render json: Provider.all, each_serializer: Api::V1::ProviderSerializer, root: :providers
  end

  def show
    render json: Provider.find_by(id: params[:id]), serializer: Api::V1::ProviderSerializer, root: :providers
  end

end

