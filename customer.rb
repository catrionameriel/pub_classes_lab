class Customer
  attr_reader :customer_name, :wallet, :age

  def initialize(customer_name, wallet, age)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
  end

  def buy_drink(pub, drink, customer)
    if pub.check_age(customer) == true
      pub.sell_drink(drink)
      @wallet -= drink.price
    else
      return "Sorry pal, nae drink for you!"
    end
  end

end
