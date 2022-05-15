class BaseProductController < ApplicationController
  protected

  def permitted_params
    fields = self.class_name.all_fields

    params.permit(fields).merge(params.require(self.class_name.name.underscore.to_sym).permit(:photo))
  end
end
