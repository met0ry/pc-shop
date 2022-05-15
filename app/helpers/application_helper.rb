module ApplicationHelper
  include Pagy::Frontend

  def selected_order_by
    if params[:order_by].present?
      I18n.t("product.order_by.#{params[:order_by]}")
    else
      I18n.t('product.order_by.latest')
    end
  end

  def available_filter_text(field_name:, filter:)
    if field_name == :warranty
      I18n.t("product.filters.warranty", count: filter / 12)
    else
      filter.to_s
    end
  end

  def filter_is_checked?(field_name, filter)
    params[field_name]&.include?(filter.to_s)
  end
end
