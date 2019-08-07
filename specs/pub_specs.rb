require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 3)
    @drink2 = Drink.new("Whisky", 5)
    @drink3 = Drink.new("Beer", 4)
    @pub = Pub.new("The coders arms", 100, [@drink1, @drink2, @drink3])
  end

  def test_name
    assert_equal("The coders arms", @pub.name)
  end

  def test_till
    assert_equal(100, @pub.till)
  end

  def test_drinks
    assert_equal(@drink1, @pub.drinks[0])
  end

  def test_remove_drink
    assert_equal(2, @pub.remove_drink("Wine").length)
  end
end
