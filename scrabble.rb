class Scrabble
  def tiles(inputChar)
    inputChar = inputChar.downcase
    letterValues = {
      1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s","t"],
      2 => ["d", "g"],
      3 => ["b", "c", "m", "p"],
      4 => ["f", "h", "v", "w", "y"],
      5 => ["k"],
      8 => ["j", "x"],
      10 => ["q", "z"]
    }
    if letterValues[1].include?(inputChar)
      1
    elsif letterValues[2].include?(inputChar)
      2
    elsif letterValues[3].include?(inputChar)
      3
    elsif letterValues[4].include?(inputChar)
      4
    elsif letterValues[5].include?(inputChar)
      5
    elsif letterValues[8].include?(inputChar)
      8
    elsif letterValues[10].include?(inputChar)
      10
    end
  end
end
