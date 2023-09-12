require "./player-choice-getter"
require "./get-computer-choice"

game_over = false
while game_over == false
  player_choice = PlayerChoiceGetter.get
  computer_choice = get_computer_choice
  game_over = player_choice.resolve_game computer_choice
end
