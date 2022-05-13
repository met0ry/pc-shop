class ProcessorsController < ApplicationController
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
    byebug
    Processor.create(permitted_params)
  end

  private 

  def permitted_params
    params.permit(:sku, :brand, :tag, :processor_series, :socket_type, :cores, :threads, :base_frequency, :warranty, :price, :photo).merge(params.require(:processor).permit(:photo))
  end
end
