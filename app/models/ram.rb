class Ram < ActiveRecord::Base
  include BaseProduct

  has_one_attached :photo
  validates :memory_series, :memory_type, :size, :speed, presence: true

  FILTER_FIELDS = [:memory_series, :memory_type, :size, :speed]
end