# AssetSupplier
class AssetSupplier < ApplicationRecord
  belongs_to :asset
  belongs_to :supplier
end
