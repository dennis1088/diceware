module Diceware
  class GeneratePassphraseRequest
    attr_accessor :num_words

    def initialize(num_words)
      @num_words = num_words
    end
  end
end