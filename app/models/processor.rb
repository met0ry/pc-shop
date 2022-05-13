class Processor < ActiveRecord::Base
  has_one_attached :photo
  validates :sku, :brand, :processor_series, :socket_type, :tag, :cores, :threads, :base_frequency, presence: true

  scope :order_by_latest, -> { order('updated_at DESC') }

  scope :order_by_low_price, -> { order('price ASC') }
  
  scope :order_by_high_price, -> { order('price DESC') }

  def self.search(params)
    scope = Processor.all

    if params[:order_by] == 'latest'
      scope.order_by_latest 
    elsif params[:order_by] == 'low_price'
      scope.order_by_low_price
    elsif params[:order_by] == 'high_price'
      scope.order_by_high_price
    else
      scope.order_by_latest
    end
  end
end