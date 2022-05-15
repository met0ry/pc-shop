class MotherboardsController < ApplicationController
  def index
    @pagy, @motherboards = pagy(Motherboard.search(params))
  end

  def show
    @motherboard = Motherboard.find(params[:id])
  end
end
