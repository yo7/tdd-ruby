require_relative './money'

class Franc < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipier)
    Franc.new(@amount * multipier)
  end
end
