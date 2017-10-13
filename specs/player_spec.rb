require("minitest/autorun")
require("minitest/rg")

require_relative("../player")

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Alan")
  end

  def test_name
    assert_equal("Alan", @player.name)
  end

end
