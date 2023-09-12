require "./player-choice-getter"
require "./get-computer-choice"

player_choice = PlayerChoiceGetter.get
computer_choice = get_computer_choice
puts "User chose #{sanitised_user_input}"
puts "Computer chose #{computer_choice}"
puts player_choice.determine_game_result computer_choice
