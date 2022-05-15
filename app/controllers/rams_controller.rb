class RamsController < ApplicationController
  def index
    @pagy, @rams = pagy(Ram.search(params))
  end

  def show
    @ram = Ram.find(params[:id])
  end
end
