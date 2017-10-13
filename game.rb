require_relative("./word")

class Game

  attr_reader :guessed_letters

  def initialize(word)
    @word = Word.new(word)
    @guessed_letters = []
  end

  def guess(letter)
    @guessed_letters << letter
  end

  def reveal_word()
    @word.display(@guessed_letters)
  end

end
