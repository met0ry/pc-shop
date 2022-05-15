class RamsController < ApplicationController
  def index
    @pagy, @rams = pagy(Ram.search(params))
  end
end
