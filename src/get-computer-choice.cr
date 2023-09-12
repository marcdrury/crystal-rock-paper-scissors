def get_computer_choice : String
  valid_options = ["rock", "paper", "scissors"]
  random_index = Random.new.rand(3)
  valid_options[random_index]
end
