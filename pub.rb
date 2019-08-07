class Pub

  attr_accessor :till
  attr_reader :name, :drinks

  def initialize (name, till, drinks)
    @name = name
    @till = till
    @drinks = []
  end

  def remove_drink(drink_bought)
    for drink in @drinks
      if drink == drink_bought
        @drinks.delete(drink)
      end
    end
  end
  end
