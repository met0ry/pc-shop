class SsdsController < BaseProductController
  def index
    @pagy, @ssds = pagy(Ssd.search(params))
  end

  def show
    @ssd = Ssd.find(params[:id])
  end

  def new
    @ssd = Ssd.new
  end

  def create
    @ssd = Ssd.new(permitted_params)

    if @ssd.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to ssd_path(@ssd)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    Ssd
  end
end
