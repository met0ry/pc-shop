class Ssd < ActiveRecord::Base
  include BaseProduct

  has_one_attached :photo
  validates :interface, :form_factor, :capacity, :read_speed, :write_speed, presence: true

  FILTER_FIELDS = [:interface, :form_factor, :capacity, :read_speed, :write_speed]
end