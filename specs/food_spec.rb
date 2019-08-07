require("minitest/autorun")
require("minitest/rg")
require_relative("../food")

class FoodTest < MiniTest::Test

def setup
  @food = Food.new("pizza", 10, 3)

end

def test_name
  assert_equal("pizza", @food.name)
end

def test_price
  assert_equal(10, @food.price)
end

def test_rejuvenation_level
  assert_equal(3, @food.rejuvenation_level)
end



end
