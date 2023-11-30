class DiscountCalculator

  attr_accessor :total, :discount_total

  def initialize
    @total = 0
    @discount_total = 0
  end

  def subtotal(price)
    @total += price
  end

  def apply_discount(type, value)
    case type
    when :percent
      @discount_total += @total * value / 100.0
      @total *= (100 - value) / 100.0
    when :amount
      @discount_total += value
      @total -= value
    else
      raise "Invalid discount type: #{type}"
    end
  end
end