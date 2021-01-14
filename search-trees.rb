require 'byebug'

# Node class w/ value, right & left child nodes
class Node
  attr_accessor :value, :child_left, :child_right

  def initialize(val, child_left=nil, child_right=nil)
    @value = val
    @child_left = child_left
    @child_right = child_right
  end
end

# Tree class, accepts array
class Tree
  attr_reader :arr
  # attr_accessor

  def initialize(arr)
    @arr = arr
  end

  def root
    @root = build_tree
  end

  def build_tree(arr)
    idx_mid = arr.length / 2
    
  end
end

test_node = Node.new(1)
test_tree = Tree.new([1,2,3])

byebug
puts "end program"