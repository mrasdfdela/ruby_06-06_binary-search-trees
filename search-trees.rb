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
  attr_accessor :node_tree
  attr_reader :arr, :root, :idx_last

  def initialize(arr)
    @arr = arr.sort.uniq
    @idx_last = @arr.length - 1
    @node_tree = []
    self.build_tree
  end

  def build_tree(arr=@arr)
    mid_idx = arr.length / 2
    first_half = arr[0...mid_idx]
    sec_half = arr[mid_idx + 1..-1]

    case arr.length
    when 1
      new_node = Node.new(arr[0])
    when 2
      new_node = Node.new(arr[0], nil, build_tree([arr[1]]))
    else
      new_node = Node.new(arr[mid_idx], build_tree(first_half), build_tree(sec_half))
    end

    @node_tree << new_node
    new_node.value
  end
end

test_array = [1,7,4,23,8,9,4,3,5,7,9,67,6345,324]
test_tree = Tree.new(test_array)

byebug
puts "end program"