puts "Rock, Paper, or Scissors?:"
input = gets
if input.nil? || input.empty?
  puts "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
  exit(1)
end
puts input
