require "./get-player-choice"
require "./get-computer-choice"

player_choice = get_player_choice
computer_choice = get_computer_choice
puts "User chose #{sanitised_user_input}"
puts "Computer chose #{computer_choice}"
puts player_choice.determine_game_result computer_choice
