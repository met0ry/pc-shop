class GraphicCard < ActiveRecord::Base
  validates :sku, :brand, :tag, :gpu_series, :memory_interface, :memory_type, :memory_size, :price, presence: true
end