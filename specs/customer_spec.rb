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
    @customer1 = Customer.new("Catriona", 10, 30)
    @customer2 = Customer.new("Anna", 50, 38)
    @customer3 = Customer.new()
  end

  def test_customer_name
    assert_equal("Catriona", @customer1.customer_name)
  end

  def test_wallet
    assert_equal(50, @customer2.wallet)
  end

  def test_buy_drink__success
    @customer1.buy_drink(@pub, @drink1, @customer1)
    assert_equal(7, @customer1.wallet)
    assert_equal(103, @pub.till)
  end

  def test_customer_has_age
    assert_equal(30, @customer1.age)
  end

  def test_buy_drink__fail
    @customer1.buy_drink(@pub, @drink1, @customer1)
    assert_equal(7, @customer1.wallet)
    assert_equal(103, @pub.till)
  end


end
