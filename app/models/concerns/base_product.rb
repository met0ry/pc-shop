module BaseProduct
  extend ActiveSupport::Concern

  included do
    validates :sku, :brand, :tag, :warranty, presence: true # add price


    scope :order_by_latest, -> { order('updated_at DESC') }

    scope :order_by_low_price, -> { order('price ASC') }
    
    scope :order_by_high_price, -> { order('price DESC') }
  end

  class_methods do
    def search(params)
      scope = self.all
  
      fields = self.all_filters
  
      fields.each do |field|
        if params[field].present?
          scope = scope.where(field => params[field].split(','))
        end
      end
  
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

    ##### FILTER RELATED METHODS

    def all_filters
      self::FILTER_FIELDS + BASE_FILTER_FIELDS
    end

    def filtering_fields
      scope = self.all
  
      fields = self.all_filters
  
      filtering_fields = []
  
      fields.each do |field| 
        hash = {}
  
        hash[:field] = field
  
        hash[:available_filters] = self.send("#{field}_filters", scope) rescue self.send(:base_filters, field, scope)
        
        filtering_fields << hash
      end
  
      filtering_fields
    end

    def base_filters(field_name, scope)
      scope.map(&field_name).uniq
    end

    def all_fields
      self::FILTER_FIELDS + BASE_FIELDS
    end

    # def warranty_filters(scope)
    #   scope.map(&:warranty).uniq.map { |x| x / 12}
    # end
  end

  BASE_FILTER_FIELDS = [:brand, :warranty] # add price
  BASE_FIELDS = [:sku, :brand, :tag, :warranty, :price, :photo]
end