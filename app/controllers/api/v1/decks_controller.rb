class Api::V1::DecksController < ApplicationController

  def index
    decks = Deck.all
    render json: decks
  end

  def create
    deck = Deck.create(deck_params)
    render json: deck
  end

  private

  def deck_params
    params.require(:data).permit(:name)
  end

end