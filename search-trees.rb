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
    @node_tree = build_tree(arr)
    @arr = arr
    @idx_last = @arr.length - 1
  end

  def build_tree(arr=@arr)
    if arr.length == 0
      return
    elsif arr.length == 1
      return Node.new(arr[0])
    else
      mid = arr.length / 2
      first_half = arr[0...mid]
      sec_half = arr[mid + 1..-1]
      Node.new(arr[mid], build_tree(first_half), build_tree(sec_half))
    end
  end
end

test_array = [1,7,4,23,8,9,4,3,5,7,9,67,6345,324]
test_tree = Tree.new(test_array)

byebug
puts "end program"