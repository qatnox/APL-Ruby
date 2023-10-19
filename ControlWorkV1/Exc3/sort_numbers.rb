# frozen_string_literal: true


#Sorts the numbers in the selected order
def sort_numbers(numbers, order)
  if order == "1"
    numbers.sort!
  elsif order == "2"
    numbers.sort! { |a, b| b <=> a }
  end
end

puts "Enter the numbers (e.g. 5, 2, 8, 1):"
input = gets.chomp
numbers = input.split(',').map(&:to_i)

puts "Sort in order (1 - ascending, 2 - descending):"
order = gets.chomp

sorted_numbers = sort_numbers(numbers, order)

puts "Sorted list: #{sorted_numbers.join(', ')}"

