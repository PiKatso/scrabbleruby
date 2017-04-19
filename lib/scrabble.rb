class Scrabble
  # define the method (tiles) within the class (Scrabble)
  def tiles(inputWord)
    inputWord = inputWord.downcase
    letterArray = inputWord.split(//)

    # hash containing our points as keys and an array of correspondingletters as it's value
    letterValues = {
      1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s","t"],
      2 => ["d", "g"],
      3 => ["b", "c", "m", "p"],
      4 => ["f", "h", "v", "w", "y"],
      5 => ["k"],
      8 => ["j", "x"],
      10 => ["q", "z"]
    }
    # initialize totalArray
    totalArray = []
    #run loop through each letter in the letterArray, created by splitting the input
    letterArray.each do |letter|
      if letterValues[1].include?(letter)
        totalArray.push(1)
      elsif letterValues[2].include?(letter)
        totalArray.push(2)
      elsif letterValues[3].include?(letter)
        totalArray.push(3)
      elsif letterValues[4].include?(letter)
        totalArray.push(4)
      elsif letterValues[5].include?(letter)
        totalArray.push(5)
      elsif letterValues[8].include?(letter)
        totalArray.push(8)
      elsif letterValues[10].include?(letter)
        totalArray.push(10)
      end
    end
    # call inject to sum the totals from the totalArray
    # also, returns that value, as it's the last line in the class
    totalArray.inject { |sum, n| sum + n }
  end
end
