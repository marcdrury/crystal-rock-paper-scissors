require "./get-user-input"
require "./input-validator"
require "./invalid-input-exception"
require "./get-computer-choice"

input = get_user_input
begin
  InputValidator.validate input
rescue exception : InvalidInputException
  puts exception.message
  exit(1)
end
computer_choice = get_computer_choice
puts "User chose #{input}"
puts "Computer chose #{computer_choice}"
