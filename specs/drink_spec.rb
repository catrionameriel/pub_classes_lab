require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("wine", 4)
  end

  def test_drink_name
    assert_equal("beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(4, @drink2.price)
  end

end
