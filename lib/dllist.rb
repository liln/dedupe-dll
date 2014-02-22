require_relative "node"

class DLList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def print_all
    n1 = @head
    while n1.nexxt do
      print n1.value.to_s + ", "
      n1 = n1.nexxt
    end
    print n1.value.to_s + "\n"
  end

  def to_a
    n1 = @head
    a = Array.new
    while n1 do
      a << n1.value
      n1 = n1.nexxt
    end
    a
  end

  def insert_after(node, value)
    new_node = Node.new(value, node, node.nexxt)
    last(node) ? @tail = new_node : node.nexxt.prev = new_node
    node.nexxt = new_node
  end

  def insert_before(node, value)
    new_node = Node.new(value, node.prev, node)
    first(node) ? @head = new_node : node.prev.nexxt = new_node
    node.prev = new_node
  end

  def prepend(value)
    if @head.nil? # first node to be added in list
      node = Node.new(value,nil,nil)
      @head = node
      @tail = node
    else
      insert_before(@head, value)
    end
  end

  def append(value)
    @tail.nil? ? prepend(value) : insert_after(@tail, value)
  end

  def delete_node(node)
    first(node) ? @head = node.nexxt : node.prev.nexxt = node.nexxt
    last(node) ? @tail = node.prev : node.nexxt.prev = node.prev
    # no more references to node
    # ruby garbage collection will delete node eventually
  end

  private
    def first(node)
      node.prev.nil?
    end

    def last(node)
      node.nexxt.nil?
    end
end
