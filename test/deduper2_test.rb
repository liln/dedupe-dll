require "test_helper"
require "dllist"
require "deduper2"

class Deduper2Test < Minitest::Unit::TestCase
  include Deduper2

  def setup
    @list = DLList.new
    [8,4,2,4,9,4,8,8,1,3].each do |n|
      @list.append(n)
    end
  end

  def test_deduper2
    dedupe(@list)
    assert_equal @list.to_a, [8,4,2,9,1,3]
  end
end
