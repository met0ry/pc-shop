class GraphicCardsController < ApplicationController
  def index
    @pagy, @graphic_cards = pagy(GraphicCard.search(params))
  end

  def show
    @graphic_card = GraphicCard.find(params[:id])
  end
end
