require "./player-choices"
require "./input-parser"
require "./invalid-input-exception"
require "./player-choice-factory"

module PlayerChoiceGetter
  extend self

  def get : PlayerChoice
    user_input = get_user_input
    sanitised_user_input = nil
    begin
      sanitised_user_input = InputParser.parse user_input
    rescue exception : InvalidInputException
      puts exception.message
      exit(1)
    end
    player_choice = player_choice_factory sanitised_user_input
  end

  private def get_user_input : String?
    puts "Rock, Paper, or Scissors?:"
    input = gets
  end
end
