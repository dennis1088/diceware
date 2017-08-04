class GeneratePassphrase
  def initialize(words_repo)
    @words_repo = words_repo
  end

  def generate(request)
    words = Array.new

    request.num_words.times do
      randomIndex = (0..4).map { rand(1..6) }.join.to_i 
      words << @words_repo.find(randomIndex)
    end

    words.join('-')
  end
end
