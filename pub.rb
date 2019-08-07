class Pub

  attr_accessor :till
  attr_reader :name, :drinks

  def initialize (name, till, drinks)
    @name = name
    @till = till
    @drinks = []
  end

  def drinks_length
    return @drinks.length
  end

  def add_drink(drink)
    return @drinks.push(drink)
  end

  def sell_drink
    @drinks.pop
  end

  def add_to_till(drink_price)
     return @till += drink_price
  end

  def check_age(age)
    age >= 18 
  end

def drunkenness_level(drunkenness)
  drunkenness <= 15
end
end
