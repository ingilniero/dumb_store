class Api::V1::AddressSerializer < ActiveModel::Serializer
  attributes  :id,
              :street,
              :city,
              :state,
              :zip

  embed :ids, include: true

  has_one :provider, key: :providers, root: :providers, serializer: Api::V1::ProviderSerializer

end

