class Node
  attr_accessor :value, :prev, :nexxt

  def initialize(value, prev, nexxt)
    @value = value
    @prev = prev
    @nexxt = nexxt
  end
end
