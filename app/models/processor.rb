class Processor < ActiveRecord::Base
  has_one_attached :photo
  validates :sku, :brand, :processor_series, :socket_type, :tag, :cores, :threads, :base_frequency, presence: true
end