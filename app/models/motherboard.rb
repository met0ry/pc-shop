class Motherboard < ActiveRecord::Base
  include BaseProduct

  validates :socket_type, :ram_type, :chipset_type, :max_ram_support, presence: true
end