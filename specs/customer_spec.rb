require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestCustomer < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 3)
    @drink2 = Drink.new("wine", 4)
    @drinks = [@drink1, @drink2]
    @pub = Pub.new("Pickles", 100, @drinks)
    @customer1 = Customer.new("Catriona", 10)
    @customer2 = Customer.new("Anna", 50)
  end

  def test_customer_name
    assert_equal("Catriona", @customer1.customer_name)
  end

  def test_wallet
    assert_equal(50, @customer2.wallet)
  end

  def test_buy_drink
    @customer1.buy_drink(@pub, @drink1)
    assert_equal(7, @customer1.wallet)
    assert_equal(103, @pub.till)
  end

  

end
