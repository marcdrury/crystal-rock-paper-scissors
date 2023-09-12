abstract class PlayerChoice
  @@WINS_AGAINST = ""
  @@LOSES_AGAINST = ""
  @@IS = ""

  def determine_game_result(opponent_choice : String) : String
    if opponent_choice == @@WINS_AGAINST
      return "win"
    elsif opponent_choice == @@LOSES_AGAINST
      return "lose"
    else
      return "draw"
    end
  end
end

class Rock < PlayerChoice
  @@WINS_AGAINST = "scissors"
  @@LOSES_AGAINST = "paper"
  @@IS = "rock"
end  

class Paper < PlayerChoice
  @@WINS_AGAINST = "rock"
  @@LOSES_AGAINST = "scissors"
  @@IS = "paper"
end

class Scissors < PlayerChoice
  @@WINS_AGAINST = "paper"
  @@LOSES_AGAINST = "rock"
  @@IS = "scissors"
end
