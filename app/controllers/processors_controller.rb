class ProcessorsController < BaseProductController
  def index
    @pagy, @processors = pagy(Processor.search(params))
  end

  def show
    @processor = Processor.find(params[:id])
  end

  def new
    @processor = Processor.new
  end

  def create
    @processor = Processor.new(permitted_params)

    if @processor.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to processor_path(@processor)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    Processor
  end
end
