class Ram < ActiveRecord::Base
  include BaseProduct

  validates :memory_series, :memory_type, :size, :speed, presence: true
end