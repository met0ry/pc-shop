class MotherboardsController < BaseProductController
  def index
    @pagy, @motherboards = pagy(Motherboard.search(params))
  end

  def show
    @motherboard = Motherboard.find(params[:id])
  end

  def new
    @motherboard = Motherboard.new
  end

  def create
    @motherboard = Motherboard.new(permitted_params)

    if @motherboard.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to motherboard_path(@motherboard)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    Motherboard
  end
end
