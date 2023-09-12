require "./input-validator"
require "./invalid-input-exception"

puts "Rock, Paper, or Scissors?:"
input = gets
begin
  InputValidator.validate input
rescue exception : InvalidInputException
  puts exception.message
  exit(1)
end
puts input
