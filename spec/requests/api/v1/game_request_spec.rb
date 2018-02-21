require "rails_helper"

describe "Game API" do
  context "HTTP GET" do
    it "can a return a game" do
    user_1 = create(:user)
    user_2 =  create(:user)
    game = create(:game,id:1, player_1:user_1, player_2:user_2)
     play = create(:play, game:game, user:user_1)
     
     get "/api/v1/games/1"

      game = JSON.parse(response.body)
      expect(response).to be_successful
    end
  end
end
