class SsdsController < ApplicationController
  def index
    @pagy, @ssds = pagy(Ssd.search(params))
  end
end
