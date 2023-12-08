require_relative 'node'

class BinaryTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    @root = insert_recursive(@root, value)
  end

  def inorder
    inorder_recursive(@root)
  end

  def preorder
    preorder_recursive(@root)
  end

  def postorder
    postorder_recursive(@root)
  end

  private

  def insert_recursive(node, value)
    return Node.new(value) if node.nil?

    if value < node.value
      node.left = insert_recursive(node.left, value)
    elsif value > node.value
      node.right = insert_recursive(node.right, value)
    end

    node
  end

  def inorder_recursive(node)
    return [] if node.nil?

    inorder_recursive(node.left) + [node.value] + inorder_recursive(node.right)
  end

  def preorder_recursive(node)
    return [] if node.nil?

    [node.value] + preorder_recursive(node.left) + preorder_recursive(node.right)
  end

  def postorder_recursive(node)
    return [] if node.nil?

    postorder_recursive(node.left) + postorder_recursive(node.right) + [node.value]
  end
end
