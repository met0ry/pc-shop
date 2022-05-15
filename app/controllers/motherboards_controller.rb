class MotherboardsController < ApplicationController
  def index
    @pagy, @motherboards = pagy(Motherboard.search(params))
  end
end
