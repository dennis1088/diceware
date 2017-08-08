module Diceware
  class GeneratePassphrase
    def initialize(words_repo = WordRepo.new)
      @words_repo = words_repo
    end

    def generate(request)
      words = Array.new

      request.num_words.times do
        randomIndex = (0..4).map { rand(1..6) }.join.to_i
        words << @words_repo.find(randomIndex)
      end

      if request.capitalize
        words = words.map {|x| x.capitalize}
      end

      if request.add_digit
        words[words.count-1] = rand(0..9)
      end

      words.join('-')
    end
  end
end
