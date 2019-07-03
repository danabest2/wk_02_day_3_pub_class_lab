require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Daniela", 1000)

    @drink1 = Drink.new("Mojito", 10)
    @drink2 = Drink.new("Mojito", 10)
    @drink3 = Drink.new("Mojito", 10)

    @pub = Pub.new("Irish pub", 10, [@drink1, @drink2, @drink3])
  end

  def test_customer_name()
    assert_equal("Daniela", @customer.name())
  end

  def test_customer_has_wallet()
    assert_equal(1000, @customer.wallet())
  end

  def test_customer_buys_drink()
    @customer.spend_money(@drink1)  ##drink price as an argument
    assert_equal(990, @customer.wallet())
  end

  def test_customer_buys_drink_from_pub()
    @customer.buys_drink_from_pub(@pub, @drink1)

    assert_equal(990, @customer.wallet())
    assert_equal(2, @pub.drink_count())
    assert_equal(20, @pub.till_total())
  end










end
