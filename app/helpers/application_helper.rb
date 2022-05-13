module ApplicationHelper
  include Pagy::Frontend

  def selected_order_by
    if params[:order_by].present?
      I18n.t("product.order_by.#{params[:order_by]}")
    else
      I18n.t('product.order_by.latest')
    end
  end
end
