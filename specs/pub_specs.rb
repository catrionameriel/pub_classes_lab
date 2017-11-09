require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestPub < MiniTest::Test

  def setup
    @customer2 = Customer.new("Anna", 50, 38)
    @customer3 = Customer.new("George", 20, 17)
    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("wine", 4)
    @drinks = [@drink1, @drink2]
    @pub = Pub.new("Pickles", 100, @drinks)
  end

  def test_pub_name
    assert_equal("Pickles", @pub.name)
  end

  def test_till
    assert_equal(100, @pub.till)
  end

  # def test_pub_drinks
  #   assert_equal(["beer", "wine"], @pub.drinks)
  # end

  def test_single_drink
    assert_equal("beer", @drink1.name)
  end

  def test_sell_drink
    assert_equal(103, @pub.sell_drink(@drink1))
  end

  def test_check_age__young
    assert_equal(false, @pub.check_age?(@customer3))
  end

  def test_check_age__old
    assert_equal(true, @pub.check_age?(@customer2))
  end
end
