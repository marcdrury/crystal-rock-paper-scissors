require "./player-choice-getter"
require "./get-computer-choice"

player_choice = PlayerChoiceGetter.get
computer_choice = get_computer_choice
player_choice.resolve_game computer_choice
