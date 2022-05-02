class Processor < ActiveRecord::Base
  validates :sku, :brand, :processor_series, :socket_type, :tag, :cores, :threads, :base_frequency, presence: true
end