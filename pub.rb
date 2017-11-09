class Pub
  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def sell_drink(drink)
    @till += drink.price
  end

  def check_age?(customer)
    customer.age >= 18
  end

end
