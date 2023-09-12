require "./player-choices"
require "./input-parser"
require "./invalid-input-exception"

module PlayerChoiceGetter
  extend self

  def get : PlayerChoice
    user_input = self.get_user_input
    sanitised_user_input = self.sanitise_user_input user_input
    self.player_choice_factory sanitised_user_input
  end

  private def get_user_input : String?
    puts "Rock, Paper, or Scissors?:"
    input = gets
  end

  private def sanitise_user_input(user_input : String?) : String
    begin
      return InputParser.parse user_input
    rescue exception : InvalidInputException
      puts exception.message
      exit(1)
    end
  end

  private def player_choice_factory(player_input : String?) : PlayerChoice
    if player_input == "rock"
      return Rock.new
    elsif player_input == "paper"
      return Paper.new
    elsif player_input == "scissors"
      return Scissors.new
    else
      raise Exception.new "Player input provided to the factory was not a valid choice"
    end
  end
end
