class PowerSuppliesController < ApplicationController
  def index
    @pagy, @power_supplies = pagy(PowerSupply.search(params))
  end
end
