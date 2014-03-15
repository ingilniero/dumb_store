class Api::V1::AddressSerializer < ActiveModel::Serializer
  attributes  :id,
              :street,
              :city,
              :state,
              :zip,
              :provider_id

  embed :ids, include: true

  has_one :provider, key: :providers, root: :providers, serializer: Api::V1::ProviderSerializer

  def provider_id
    object.provider.id
  end
end

