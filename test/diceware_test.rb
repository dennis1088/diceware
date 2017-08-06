require 'test_helper'

class DicewareTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Diceware::VERSION
  end

  def test_that_it_generates_a_passphrase
  	passwordGenerator = Diceware::GeneratePassphrase.new()
  	request = Diceware::GeneratePassphraseRequest.new(5)

  	passphrase = passwordGenerator.generate(request)

    assert_equal(5, passphrase.split('-').length)
  end
end
