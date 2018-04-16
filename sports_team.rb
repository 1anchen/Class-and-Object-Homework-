class SportsTeam

attr_accessor(:team_name , :player_name, :coach_name, :team_point)

   def initialize(team_name, player_name, coach_name,team_point)
     @team_name = team_name
     @player_name = player_name
     @coach_name = coach_name
     @team_point = team_point
   end


   def player_add_name(new_player)
     return @player_name.push(new_player)
   end

   def sports_player_name_exist(player)
    for teammate in @player_name
       return true if teammate == player
    end
    return false
   end

   def team_win_or_lose(result)
      return 3 if result.downcase == "win"
      return 0 if result.downcase == "lose"

   end

   # def get_team_name()
   #   return @team_name
   # end
   #
   # def get_player_name()
   #   return @player_name
   # end
   #
   # def get_coach_name()
   #   return @coach_name
   # end

end
