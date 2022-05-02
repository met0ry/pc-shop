class Motherboard < ActiveRecord::Base
  validates :sku, :brand, :tag, :socket_type, :ram_type, :chipset_type, :max_ram_support, :price, presence: true
end