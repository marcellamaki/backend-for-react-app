class Api::V1::CardsController < ApplicationController

  def index
    cards = Card.all
    render json: cards
  end

  def create
    card = Card.create(card_params)
    render json: card
  end

  def delete
    card = Card.find(params[:id])
    card.destroy
    index
  end

  private

  def card_params
    params.require(:data).permit(:question, :answer, :deck_id, :id)
  end

end
