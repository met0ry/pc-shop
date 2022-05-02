class Ssd < ActiveRecord::Base
  validates :sku, :brand, :tag, :interface, :form_factor, :capacity, :read_speed, :write_speed, :price, presence: true
end