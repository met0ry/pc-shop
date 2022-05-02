class PowerSupply < ActiveRecord::Base
  validates :sku, :brand, :tag, :wattage, :price, presence: true
end