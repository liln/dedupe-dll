require "test_helper"
require "ddlist"
require "deduper"
require "deduper2"

class DeduperTest < Minitest::Unit::TestCase
  def setup
    @list = DDList.new
    [8,4,2,4,9,4,8,8,1,3].each do |n|
      @list.append(n)
    end
    @list.print_all
  end

  def test_something
    assert @list.print_all
  end

  def test_deduper1
    include Deduper
    Deduper.dedupe(@list)
    puts "Output of deduper:"
    @list.print_all
  end

  # def test_deduper2
  #   include Deduper2
  #   Deduper2.dedupe(@list)
  #   puts "Output of deduper:"
  #   @list.print_all
  # end
end
