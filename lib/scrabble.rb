class String
  define_method(:scrabble) do
    scores = Hash.new()
    scores.store("A", 1)
    scores.store("E", 1)
    scores.store("I", 1)
    scores.store("O", 1)
    scores.store("U", 1)
    scores.store("L", 1)
    scores.store("N", 1)
    scores.store("R", 1)
    scores.store("S", 1)
    scores.store("T", 1)
    scores.store("D", 2)
    scores.store("G", 2)
    scores.store("B", 3)
    scores.store("C", 3)
    scores.store("M", 3)
    scores.store("P", 3)
    scores.store("F", 4)
    scores.store("H", 4)
    scores.store("V", 4)
    scores.store("W", 4)
    scores.store("Y", 4)
    scores.store("K", 5)
    scores.store("J", 8)
    scores.store("X", 8)
    scores.store("Q", 10)
    scores.store("Z", 10)

    score = 0
    self.each_char() do |letter|
      cap_letter = letter.upcase!()
      if scores.include?(cap_letter)
        score += (scores.fetch(letter))
      end
    end
    return score
  end
end
