require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class DrinkTest < MiniTest::Test

def test_name
  drink = Drink.new("Whisky", 5)
  assert_equal("Whisky", drink.name)
end

def test_price
  drink = Drink.new("Whisky", 5)
  assert_equal(5, drink.price)
end

end
