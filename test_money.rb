require 'test/unit'
require_relative './dollar'
require_relative './franc'

class MoneyTest < Test::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    product = five.times(2)
    assert_equal(Money.dollar(10), product)
    product = five.times(3)
    assert_equal(Money.dollar(15), product)
  end

  def test_equality
    assert_equal(Money.dollar(5), Money.dollar(5))
    assert_false(Money.dollar(5) == Money.dollar(3))
    assert_equal(Money.franc(5), Money.franc(5))
    assert_false(Money.franc(5) == Money.franc(3))
    assert_false(Money.franc(5) == Money.dollar(5))
  end

  def test_Franc_multiplication
    five = Money.franc(5)
    assert_equal(Money.franc(10), five.times(2))
    assert_equal(Money.franc(15), five.times(3))
  end
end
