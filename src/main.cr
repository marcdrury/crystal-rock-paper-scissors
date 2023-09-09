valid_inputs = ["rock", "paper", "scissors"]
puts "Rock, Paper, or Scissors?:"
input = gets
if input.nil? || input.empty?
  puts "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
  exit(1)
end
input = input.downcase
if valid_inputs.none? { |option| option == input }
  puts "Invalid input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
  exit(1)
end
puts input
