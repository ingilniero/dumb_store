class Provider < ActiveRecord::Base
  has_many   :products
  belongs_to :address

end

