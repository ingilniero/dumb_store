class Api::V1::ProductSerializer < ActiveModel::Serializer
  attributes  :id,
              :name,
              :description,
              :price,
              :created_at,
              :provider_id

  embed :ids, include: true

  has_one :provider, key: :providers, root: :providers, serializer: Api::V1::ProviderSerializer

end

