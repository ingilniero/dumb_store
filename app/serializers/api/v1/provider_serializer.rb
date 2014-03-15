class Api::V1::ProviderSerializer < ActiveModel::Serializer
  attributes  :id,
              :name,
              :email,
              :product_ids,
              :address_id

  embed :ids, include: true

  has_many :products, key: :products, root: :products, serializer: Api::V1::ProductSerializer
  has_one  :address, key: :addresses, root: :addresses, serializer: Api::V1::AddressSerializer

  def product_ids
    object.products.pluck(:id)
  end

end

