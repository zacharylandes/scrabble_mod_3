class Api::V1::GamesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def show
    game = Game.find(params[:id])
    render json: game, serializer: GameSerializer
  end

  def create
    game = Game.find(params[:id])
     if WordService.new.validate(params['word'])
       play = Play.create(game:game,word:params['word'], user_id:params['user_id'])
        render json: game, serializer: GameSerializer
     end
  end
end
