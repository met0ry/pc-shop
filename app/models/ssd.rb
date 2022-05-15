class Ssd < ActiveRecord::Base
  include BaseProduct

  validates :interface, :form_factor, :capacity, :read_speed, :write_speed, presence: true
end