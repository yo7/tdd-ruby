require_relative './money'

class Dollar < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multipier)
    Dollar.new(@amount * multipier)
  end
end
