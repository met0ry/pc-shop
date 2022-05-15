class GraphicCardsController < ApplicationController
  def index
    @pagy, @graphic_cards = pagy(GraphicCard.search(params))
  end
end
