require "./player-choices"
require "./get-user-input"
require "./choice-parser"
require "./invalid-input-exception"
require "./player-choice-factory"

def get_player_choice : PlayerChoice
  user_input = get_user_input
  sanitised_user_input = nil
  begin
    sanitised_user_input = ChoiceParser.parse user_input
  rescue exception : InvalidInputException
    puts exception.message
    exit(1)
  end
  player_choice = player_choice_factory sanitised_user_input
end
