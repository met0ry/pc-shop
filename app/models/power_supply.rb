class PowerSupply < ActiveRecord::Base
  include BaseProduct

  validates :wattage, presence: true
end