class Api::V1::GamesController < ApplicationController

  def index
  end

  def show
    game = Game.find(params[:id])
    render json: game, serializer: GameSerializer
  end
end
