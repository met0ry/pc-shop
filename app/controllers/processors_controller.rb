class ProcessorsController < ApplicationController
  def index
    @processors = Processor.all
  end
end
