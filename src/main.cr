require "./input-validator"
puts "Rock, Paper, or Scissors?:"
input = gets
InputValidator.validate input
puts input
