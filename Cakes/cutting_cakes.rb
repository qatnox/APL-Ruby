def find_cake_slices(cake)
  raisin_count = cake.join.count('o')
  slice_width = 1
  while raisin_count % slice_width != 0
    slice_width += 1
  end

  slice_height = raisin_count / slice_width
  slices = []

  if slice_width <= slice_height
    slice = []
    raisins_found = 0

    cake.each do |row|
      slice << row
      raisins_found += row.count('o')

      if raisins_found == slice_width
        slices << slice
        slice = []
        raisins_found = 0
      end
    end
  else
    slice_width, slice_height = slice_height, slice_width
    cake = cake.transpose
    slice = []
    raisins_found = 0

    cake.each do |row|
      slice << row
      raisins_found += row.count('o')

      if raisins_found == slice_width
        slices << slice.transpose
        slice = []
        raisins_found = 0
      end
    end
  end

  slices
end

def display_cake(cake)
  cake.each { |row| puts row }
end

puts "Enter the 'size'of the cake:"
rows = gets.chomp.to_i

puts "Enter your cake:"
cake_input = []
rows.times do
  cake_input << gets.chomp
end

result = find_cake_slices(cake_input)
puts "\nPossible solutions:"
result.each_with_index do |slice, index|
  puts "Solution №#{index + 1}:"
  display_cake(slice)
  puts "\n"
end
