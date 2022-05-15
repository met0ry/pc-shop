class Processor < ActiveRecord::Base
  include BaseProduct
  
  has_one_attached :photo
  validates :processor_series, :socket_type, :cores, :threads, :base_frequency, presence: true

  FILTER_FIELDS = [:processor_series, :socket_type, :cores, :threads, :base_frequency]
end