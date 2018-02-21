class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :scores

   def game_id
      object.id
   end


   def scores
     score_1 = object.player_1.plays.map{|play|play.score}.sum
     score_2 = object.player_2.plays.map{|play|play.score}.sum
      scores = []
      h1 = {}
      h2 = {}

      h1["user_id"] = object.player_1.id
      h1["score"] = score_1

      h2["user_id"] = object.player_2.id
      h2["score"] = score_2

     scores <<  h1
     scores <<  h2

     p scores
        # {"user_id: #{object.player_2.id}",
        # "score: #{score_2}"}



    #  p "user_id: #{object.player_1.id}"

     # object.plays.map{|play|play.score}
   end
end
