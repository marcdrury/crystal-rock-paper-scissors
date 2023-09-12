require "./get-user-input"
require "./choice-parser"
require "./invalid-input-exception"
require "./player-choice-factory"
require "./get-computer-choice"

user_input = get_user_input
begin
  ChoiceParser.parse user_input
rescue exception : InvalidInputException
  puts exception.message
  exit(1)
end
player_choice = player_choice_factory user_input
computer_choice = get_computer_choice
puts "User chose #{user_input}"
puts "Computer chose #{computer_choice}"
puts player_choice.determine_game_result computer_choice
