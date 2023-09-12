require "./invalid-input-exception"
require "./valid-options"

module ChoiceParser
  extend self

  def parse(input : String?) : String
    input = self.check_input_not_empty input
    input = self.sanitise input
    self.check_input_valid_option input
    input
  end

  private def check_input_not_empty(input : String?) : String
    if input.nil? || input.empty?
      error_message = "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
    input
  end

  private def sanitise(input : String) : String
    input = input.strip
    input.downcase
  end

  private def check_input_valid_option(input : String) : Nil
    if VALID_OPTIONS.none? { |option| option == input }
      error_message = "Invalid input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
  end
end
