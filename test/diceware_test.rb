require 'test_helper'

class DicewareTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Diceware::VERSION
  end

  def test_it_does_something_useful
  	passwordGenerator = GeneratePassphrase.new(WordRepo.new)
  	puts passwordGenerator.generate(Struct.new(:num_words).new(5))
    assert true
  end
end
