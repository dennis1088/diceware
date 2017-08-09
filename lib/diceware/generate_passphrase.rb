module Diceware
  class GeneratePassphrase
    def initialize(words_repo = WordRepo.new)
      @words_repo = words_repo
    end

    def generate(request)
      words = []

      request.num_words.times do
        random_index = (0..4).map { rand(1..6) }.join.to_i
        words << @words_repo.find(random_index)
      end

      words = words.map { |x| x.capitalize } if request.capitalize
      words[words.count - 1] = rand(0..9) if request.add_digit

      words.join('-')
    end
  end
end
