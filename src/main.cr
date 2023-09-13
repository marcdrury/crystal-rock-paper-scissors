require "./player-choice-getter"
require "./get-computer-choice"

begin
  game_over = false
  until game_over
    player_choice = PlayerChoiceGetter.get
    computer_choice = get_computer_choice
    game_over = player_choice.resolve_round computer_choice
  end
rescue exception : InvalidInputException
  puts exception.message
  exit(1)
end
