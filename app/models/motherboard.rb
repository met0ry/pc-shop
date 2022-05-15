class Motherboard < ActiveRecord::Base
  include BaseProduct

  has_one_attached :photo
  validates :socket_type, :ram_type, :chipset_type, :max_ram_support, presence: true

  FILTER_FIELDS = [:socket_type, :ram_type, :chipset_type, :max_ram_support]
end