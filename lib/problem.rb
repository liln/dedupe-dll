require_relative "dllist"
require_relative "deduper"

include Deduper

list = DLList.new
generator = Random.new
(1..200).each do |n|
  list.append(generator.rand(99)+1)
end

puts "List of 200 items: "
list.print_all

dedupe(list)

puts "Output: "
list.print_all
