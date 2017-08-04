require 'test_helper'

class DicewareTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Diceware::VERSION
  end

  def test_that_it_generates_a_passphrase
  	num_words = 5
  	passwordGenerator = Diceware::GeneratePassphrase.new()

  	passphrase = passwordGenerator.generate(num_words)

    assert_equal(num_words, passphrase.split('-').length)
  end
end
