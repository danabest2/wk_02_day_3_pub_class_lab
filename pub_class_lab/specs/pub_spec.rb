require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < Minitest::Test

  def setup
    @drink1 = Drink.new("Mojito", 10)
    @drink2 = Drink.new("Vodka", 5)
    @drink3 = Drink.new("Beer", 7)

    @pub = Pub.new("Irish pub", 0, [@drink1, @drink2, @drink])
  end

  def test_pub_name()
    assert_equal("Irish pub", @pub.name())
  end

  def test_drink_count()
    assert_equal(3, @pub.drink_count())
  end

  def test_sold_drink()
    @pub.sold_drink(@drink1)
    assert_equal(2, @pub.drink_count())
  end

  def test_till_total()
    assert_equal(0, @pub.till_total())
  end


  def test_add_money_for_sold_drink()
    @pub.money_into_till(@drink1)
    assert_equal(10, @pub.till_total())
  end










end
