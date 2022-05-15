class PowerSuppliesController < ApplicationController
  def index
    @pagy, @power_supplies = pagy(PowerSupply.search(params))
  end

  def show
    @power_supply = PowerSupply.find(params[:id])
  end
end
