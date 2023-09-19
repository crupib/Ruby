class TreeNode
  attr_accessor :value, :children

  def initialize(value, children = [])
    @value = value
    @children = children
  end

  def add_child(child_node)
    @children << child_node
  end

  def to_hash
    if @children.empty?
      @value
    else
      { @value => @children.map(&:to_hash) }
    end
  end
end

# Example usage:
tree = TreeNode.new('grandpa', [
  TreeNode.new('dad', [
    TreeNode.new('child 1', []),
    TreeNode.new('child 2', [])
  ]),
  TreeNode.new('uncle', [
    TreeNode.new('child 3', []),
    TreeNode.new('child 4', [])
  ])
])

# Convert the tree to the specified format
nested_structure = tree.to_hash
puts nested_structure.to_s

