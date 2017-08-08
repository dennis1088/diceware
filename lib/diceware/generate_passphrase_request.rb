module Diceware
  class GeneratePassphraseRequest
    attr_accessor :num_words, :capitalize, :add_digit

    def initialize(num_words, capitalize = false, add_digit = false)
      @num_words = num_words
      @capitalize = capitalize
      @add_digit = add_digit
    end
  end
end
