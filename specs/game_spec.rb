require("minitest/autorun")
require("minitest/rg")

require_relative("../game")

class GameTest < MiniTest::Test

  def setup
    @game = Game.new("test")
  end

  def test_guessed_letters_starts_empty
    assert_equal([], @game.guessed_letters)
  end

  def test_guess_letter
    @game.guess("t")
    assert_equal(["t"], @game.guessed_letters)
  end

  def test_reveal_word
    @game.guess("t")
    assert_equal("t**t", @game.reveal_word)
  end

end
