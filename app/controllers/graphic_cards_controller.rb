class GraphicCardsController < BaseProductController
  def index
    @pagy, @graphic_cards = pagy(GraphicCard.search(params))
  end

  def show
    @graphic_card = GraphicCard.find(params[:id])
  end

  def new
    @graphic_card = GraphicCard.new
  end

  def create
    @graphic_card = GraphicCard.new(permitted_params)

    if @graphic_card.save
      # flash[:success] = 'Channel successfully created.'
      redirect_to graphic_card_path(@graphic_card)
    else
      # flash[:danger] = 'Failed to create channel.'
      render :new
    end
  end

  private

  def class_name
    GraphicCard
  end
end
