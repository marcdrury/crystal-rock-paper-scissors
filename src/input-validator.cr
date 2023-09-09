module InputValidator
  extend self

  def validate(input : String?) : Nil
    input = self.check_input_not_empty input
    self.check_input_valid_option input
  end

  private def check_input_not_empty(input : String?) : String
    if input.nil? || input.empty?
      puts "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      exit(1)
    end
    input
  end

  private def check_input_valid_option(input : String) : Nil
    valid_inputs = ["rock", "paper", "scissors"]
    input_lowercased = input.downcase
    if valid_inputs.none? { |option| option == input_lowercased }
      puts "Invalid input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      exit(1)
    end
  end
end
