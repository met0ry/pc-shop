class PowerSupply < ActiveRecord::Base
  include BaseProduct

  has_one_attached :photo
  validates :wattage, presence: true

  FILTER_FIELDS = [:wattage]
end