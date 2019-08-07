require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")


class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 3)
    @drink2 = Drink.new("Whisky", 5)
    @drink3 = Drink.new("Beer", 4)
    @customer1 = Customer.new("Bob", 20)
    @pub = Pub.new("The coders arms", 100, [])

  end

  def test_name
    assert_equal("The coders arms", @pub.name)
  end

  def test_till
    assert_equal(100, @pub.till)
  end

  def test_drinks
    assert_equal("Wine", @drink1.name)
  end

   def test_number_of_drink_starts_zero
     assert_equal(0, @pub.drinks_length)
   end

   def test_can_add_drink
     drink = @drink1
     assert_equal(1, @pub.add_drink(drink).count)
   end
   def test_add_to_till
       drink_price  = @drink2.price
       assert_equal(105, @pub.add_to_till(drink_price))
   end
  # def test_sell_drink
  #   drink = @drink1
  #   @pub.add_drink(drink)
  # end

end
