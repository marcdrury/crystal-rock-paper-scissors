require "./valid-options"

def get_computer_choice : String
  random_index = Random.new.rand(3)
  VALID_OPTIONS[random_index]
end
