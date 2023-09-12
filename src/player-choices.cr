abstract class PlayerChoice
  @@WINS_AGAINST = ""
  @@LOSES_AGAINST = ""
  @@IS = ""

  def resolve_game(opponent_choice : String) : Nil
    result = self.determine_game_result opponent_choice
    self.display_game_info opponent_choice, result
  end

  private def determine_game_result(opponent_choice : String) : String
    if opponent_choice == @@WINS_AGAINST
      return "win"
    elsif opponent_choice == @@LOSES_AGAINST
      return "lose"
    else
      return "draw"
    end
  end

  private def display_game_info(opponent_choice : String, result : String) : Nil
    puts "You chose: #{@@IS.capitalize}"
    puts "Opponent chose: #{opponent_choice.capitalize}"
    puts result == "draw" ? "It's a draw!" : "You #{result}!"
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
