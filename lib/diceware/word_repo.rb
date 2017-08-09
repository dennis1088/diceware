module Diceware
  class WordRepo
    def find(id)
      File.open(File.join(File.dirname(__FILE__), './diceware.wordlist')) do |f|
        f.any? do |line|
          return line.split[1] if line[0..4] == id.to_s
        end
      end
    end
  end
end
