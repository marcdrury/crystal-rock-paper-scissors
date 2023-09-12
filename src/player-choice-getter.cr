require "./player-choices"
require "./get-user-input"
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
end
