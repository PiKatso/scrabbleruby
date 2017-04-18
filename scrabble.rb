class Scrabble
  def tiles(inputChar)
    inputChar = inputChar.downcase
    letterValues = {
      1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s","t"]
    }
    if letterValues[1].include?(inputChar)
      1
    end
  end
end
