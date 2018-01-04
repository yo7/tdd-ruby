class Money
  def ==(other)
    @amount == other.amount && self.class == other.class
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end
