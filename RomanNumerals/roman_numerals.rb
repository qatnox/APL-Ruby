# Map
ROMAN_TO_INT = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}

# Converts integer into roman numeral
def int_to_roman(n)
  ROMAN_TO_INT.keys.reverse_each.with_object('') do |roman, result|
    while n >= ROMAN_TO_INT[roman]
      n -= ROMAN_TO_INT[roman]
      result << roman
    end
  end
end

# Converts roman numeral into integer
def roman_to_int(s)
  result = 0
  prev_value = 0

  s.chars.reverse_each do |c|
    value = ROMAN_TO_INT[c]
    if value < prev_value
      result -= value
    else
      result += value
    end
    prev_value = value
  end

  result
end

# Takes the roman numeral or integer
puts "Enter a Roman numeral or an integer (1-3999)"
input = gets.chomp

if input =~ /^[0-9]+$/
  n = input.to_i
  if n >= 1 && n < 4000
    roman = int_to_roman(n)
    puts "Roman numeral: #{roman}"
  else
    puts "Incorrect input!"
  end
elsif input =~ /^[IVXLCDM]+$/
  n = roman_to_int(input)
  puts "Integer: #{n}"
else
  puts "Incorrect input!"
end
