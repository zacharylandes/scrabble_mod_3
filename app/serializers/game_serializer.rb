class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :scores

   def game_id
      object.id
   end

   def user_id
     object.plays.map{|play|p"user_id:#{play.user_id}"}
   end

   def scores
     object.plays.map  do |play|
        p "user_id:#{play.user_id}"
       p "score:#{play.score}"
     end
     # object.plays.map{|play|play.score}
   end
end
