# frozen_string_literal: true

#Generates password using random symbols
def generate_password(length)
  characters = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
  password = (0...length).map { characters[rand(characters.length)] }.join
end

#Gets the length and prints the password
loop do
  puts "Enter the length of the password:"

  input = gets.chomp
  break if input.downcase == 'exit'

  length = input.to_i

  if length <= 0
    puts "Incorrect input!"
  else
    password = generate_password(length)
    puts "> #{password}"
    puts "\n"
  end
end
