require "./invalid-input-exception"
require "./valid-options"

module InputParser
  extend self

  def parse(input : String?) : String
    input = self.validate_not_empty_or_nil input
    input = input.strip.downcase
    self.validate_is_option input
    input
  end

  private def validate_not_empty_or_nil(input : String?) : String
    if input.nil? || input.empty?
      error_message = "No input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
    input
  end

  private def validate_is_option(input : String) : Nil
    if VALID_OPTIONS.none? { |option| option == input }
      error_message = "Invalid input. You must input \"rock\", \"paper\" or \"scissors\" when prompted."
      raise InvalidInputException.new error_message
    end
  end
end
