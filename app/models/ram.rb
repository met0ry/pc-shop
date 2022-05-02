class Ram < ActiveRecord::Base
  validates :sku, :brand, :tag, :memory_series, :memory_type, :size, :speed, :price, presence: true
end