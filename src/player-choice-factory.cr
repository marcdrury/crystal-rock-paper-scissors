require "./player-choices.cr"

def player_choice_factory(player_input : String?) : PlayerChoice
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
