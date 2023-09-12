require "./invalid-input-exception"

module InputValidator
  extend self

  def validate(input : String?) : Nil
    input = self.check_input_not_empty input
    self.check_input_valid_option input
  end

  private def check_input_not_empty(input : String?) : String
    if input.nil? || input.empty?
      error_message = "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
    input
  end

  private def check_input_valid_option(input : String) : Nil
    valid_inputs = ["rock", "paper", "scissors"]
    input_lowercased = input.downcase
    if valid_inputs.none? { |option| option == input_lowercased }
      error_message = "Invalid input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
  end
end
