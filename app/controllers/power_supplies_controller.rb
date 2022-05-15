class PowerSuppliesController < BaseProductController
  def index
    @pagy, @power_supplies = pagy(PowerSupply.search(params))
  end

  def show
    @power_supply = PowerSupply.find(params[:id])
  end

  def new
    @power_supply = PowerSupply.new
  end

  def create
    @power_supply = PowerSupply.new(permitted_params)

    if @power_supply.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to power_supply_path(@power_supply)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    PowerSupply
  end
end
