require "rails_helper"

describe "Game API" do
  context "HTTP GET" do
    it "can a return a game" do
    user_1 = create(:user, id: 1)
    user_2 =  create(:user, id: 2)
    game = create(:game,id:1, player_1:user_1, player_2:user_2)
    play = create(:play, game:game, user:user_1, score:8)

     get "/api/v1/games/1"

      game = JSON.parse(response.body)
      expect(response).to be_successful
      expect(game['scores'].first).to eq({"user_id"=>1, "score"=>8})

    end

    it "can a return a game" do
      user_1 = create(:user, id: 1)
      user_2 =  create(:user, id: 2)
      game = create(:game, id:1, player_1:user_1, player_2:user_2)

     post "/api/v1/games/1/plays?user_id=1&word=at"

    game = JSON.parse(response.body)
    expect(response).to be_successful
    expect(game['scores'].first).to eq({"user_id"=>1, "score"=>2})
    end
  end
end
