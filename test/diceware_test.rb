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

  def test_that_it_capitalizes_words
    passphraseGenerator = Diceware::GeneratePassphrase.new()
    request = Diceware::GeneratePassphraseRequest.new(5, true)

    passphrase = passphraseGenerator.generate(request)

    assert(passphrase.scan(/[A-Z]/).count > 0)
  end

  def test_that_it_adds_a_digit
    passphraseGenerator = Diceware::GeneratePassphrase.new()
    request = Diceware::GeneratePassphraseRequest.new(5, false, true)

    passphrase = passphraseGenerator.generate(request)

    assert(passphrase.scan(/[0-9]/).count > 0)
  end
end
