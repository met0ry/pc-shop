class RamsController < BaseProductController
  def index
    @pagy, @rams = pagy(Ram.search(params))
  end

  def show
    @ram = Ram.find(params[:id])
  end

  def new
    @ram = Ram.new
  end

  def create
    @ram = Ram.new(permitted_params)

    if @ram.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to ram_path(@ram)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    Ram
  end
end
