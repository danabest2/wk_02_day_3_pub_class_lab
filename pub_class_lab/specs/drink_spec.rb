require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

  def setup
    @drink = Drink.new("Mojito", 10)
  end

  def test_drink_name()
    assert_equal("Mojito", @drink.name())
  end

  def test_drink_price()
    assert_equal(10, @drink.price())
  end











end
