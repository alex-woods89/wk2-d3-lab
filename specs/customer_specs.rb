require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")
require_relative("../food")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Bob", 20, 5, 30)
    @drink = Drink.new("Beer", 5, 5)
    @food = Food.new("spaghetti", 5, 2)
  end

  def test_name
    assert_equal("Bob", @customer.name)
  end

  def test_wallet
    assert_equal(20, @customer.wallet)
  end

def test_remove_from_wallet
    drink_price  = @drink.price
    assert_equal(15, @customer.remove_from_wallet(drink_price))
end

def test_age
  assert_equal(30, @customer.age)
end

def test_drunkenness
  assert_equal(5, @customer.drunkenness)
end

def test_new_drunkenness_level
  alcohol_level = @drink.alcohol_level
  assert_equal(10, @customer.new_drunkenness_level(alcohol_level))
end

def test_drunkenness_after_food
    rejuvenation_level = @food.rejuvenation_level
    assert_equal(3, @customer.drunkenness_after_food(rejuvenation_level))
 end

end
