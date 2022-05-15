class GraphicCard < ActiveRecord::Base
  include BaseProduct

  has_one_attached :photo
  validates :gpu_series, :memory_interface, :memory_type, :memory_size, presence: true

  FILTER_FIELDS = [:gpu_series, :memory_interface, :memory_type, :memory_size]
end