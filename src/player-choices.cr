abstract class PlayerChoice
  @@WINS_AGAINST = ""
  @@LOSES_AGAINST = ""
  @@IS = ""

  def resolve_round(opponent_choice : String) : Bool
    result = self.determine_round_result opponent_choice
    self.display_round_info opponent_choice, result
    self.game_over? result
  end

  private def determine_round_result(opponent_choice : String) : String
    if opponent_choice == @@WINS_AGAINST
      return "win"
    elsif opponent_choice == @@LOSES_AGAINST
      return "lose"
    else
      return "draw"
    end
  end

  private def display_round_info(opponent_choice : String, result : String) : Nil
    self.display_player_choices opponent_choice
    self.display_round_result result
  end

  private def display_player_choices(opponent_choice : String) : Nil
    puts "You chose: #{@@IS.capitalize}"
    puts "Opponent chose: #{opponent_choice.capitalize}"
  end

  private def display_round_result(result : String) : Nil
    case result
    when "draw"
      puts "It's a draw, play again!".colorize(:yellow)
    when "win"
      puts "You win!".colorize(:green)
    when "lose"
      puts "You lose!".colorize(:red)
    end
  end

  private def game_over?(result : String) : Bool
    result == "draw" ? false : true
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
