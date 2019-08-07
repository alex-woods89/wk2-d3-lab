require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Bob", 20)
    @drink = Drink.new("Beer", 5)
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

end
