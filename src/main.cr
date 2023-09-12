require "./get-user-input"
require "./input-validator"
require "./invalid-input-exception"

input = get_user_input
begin
  InputValidator.validate input
rescue exception : InvalidInputException
  puts exception.message
  exit(1)
end
puts input
