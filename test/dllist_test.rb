require "test_helper"
require "dllist"

class DLListTest < Minitest::Unit::TestCase
  def setup
    @list = DLList.new
    [1,2,3].each do |n|
      @list.append(n)
    end
    @n1 = @list.head
  end

  def test_insert_after
    @n1 = @n1.nexxt
    @list.insert_after(@n1, 2.5)
    assert_equal @list.to_a, [1,2,2.5,3]

    @n1 = @list.head
    @list.insert_after(@n1, 1.5)
    assert_equal @list.to_a, [1,1.5,2,2.5,3]

    @n1 = @list.tail
    @list.insert_after(@n1, 3.5)
    assert_equal @list.to_a, [1,1.5,2,2.5,3,3.5]
  end

  def test_insert_before
    @n1 = @n1.nexxt
    @list.insert_before(@n1, 1.5)
    assert_equal @list.to_a, [1,1.5,2,3]

    @n1 = @list.head
    @list.insert_before(@n1, 0.5)
    assert_equal @list.to_a, [0.5,1,1.5,2,3]

    @n1 = @list.tail
    @list.insert_before(@n1, 2.5)
    assert_equal @list.to_a, [0.5,1,1.5,2,2.5,3]
  end

  def test_prepend
    @list.prepend(0.5)
    assert_equal @list.to_a, [0.5,1,2,3]
    assert_equal @list.head.value, 0.5
  end

  def test_append
    @list.append(4)
    assert_equal @list.to_a, [1,2,3,4]
    assert_equal @list.tail.value, 4
  end

  def test_delete_node
    @list.delete_node(@n1)
    assert_equal @list.to_a, [2,3]
    assert_equal @list.head.value, 2

    @n1 = @list.tail
    @list.delete_node(@n1)
    assert_equal @list.to_a, [2]
    assert_equal @list.head.value, 2
    assert_equal @list.tail.value, 2
  end
end
