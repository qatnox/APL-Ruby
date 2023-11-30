require_relative 'dsl'

calculator = setup_discounts do

  purchase do
    puts "Enter subtotal amount:"
    subtotal_amount = gets.chomp.to_f
    subtotal subtotal_amount

    puts "Enter discount type (percent/amount):"
    discount_type = gets.chomp.to_sym

    puts "Enter discount value:"
    discount_value = gets.chomp.to_f

    discount discount_type, discount_value
  end

  purchase do
    puts "Enter subtotal amount for the 2nd purchase:"
    subtotal_amount = gets.chomp.to_f
    subtotal subtotal_amount

    puts "Enter discount type for the current purchase (percent/amount):"
    discount_type = gets.chomp.to_sym

    puts "Enter discount value for the current purchase:"
    discount_value = gets.chomp.to_f

    discount discount_type, discount_value
  end
end

puts "Total amount after discounts: $#{'%.2f' % calculator.total}"