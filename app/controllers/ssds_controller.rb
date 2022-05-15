class SsdsController < ApplicationController
  def index
    @pagy, @ssds = pagy(Ssd.search(params))
  end

  def show
    @ssd = Ssd.find(params[:id])
  end
end
