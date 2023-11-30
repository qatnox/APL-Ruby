require_relative 'discount_calculator'

class DSL
  def initialize(&block)
    @current_discount_calculator = DiscountCalculator.new
    @purchases = []
    instance_eval(&block) if block_given?
  end

  def purchase(&block)
    instance_eval(&block) if block_given?
    @purchases << @current_discount_calculator.total
    puts "Current purchase - TOTAL: $#{'%.2f' % @current_discount_calculator.total}"
    puts "Current purchase - DISCOUNT: $#{'%.2f' % @current_discount_calculator.discount_total}"
    puts "==================================="
    @current_discount_calculator.total = 0
    @current_discount_calculator.discount_total = 0
  end

  def subtotal(price)
    @current_discount_calculator.subtotal(price)
  end

  def discount(type, value)
    @current_discount_calculator.apply_discount(type, value)
  end

  def total
    @purchases.reduce(0) { |sum, purchase| sum + purchase }
  end
end

def setup_discounts(&block)
  DSL.new(&block)
end