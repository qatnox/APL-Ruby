require_relative 'binary_tree'

def input_numbers
  puts "Enter numbers (separated by spaces):"
  numbers = gets.chomp.split.map(&:to_i)
  numbers
end

def input_traversal
  puts "Choose traversal type (inorder/preorder/postorder):"
  gets.chomp.downcase.to_sym
end

tree = BinaryTree.new

input_numbers.each { |number| tree.insert(number) }

traversal_type = input_traversal

traversal_result = case traversal_type
                   when :inorder
                     tree.inorder
                   when :preorder
                     tree.preorder
                   when :postorder
                     tree.postorder
                   else
                     raise "Inсorrect traversal type!"
                   end

puts "<#{traversal_type.to_s.capitalize}> traversal: #{traversal_result.join(', ')}"
