require_relative "ddlist"
require_relative "deduper2"

include Deduper2

list = DDList.new
generator = Random.new
(1..200).each do |n|
  list.append(generator.rand(99)+1)
end

puts "List of 200 items: "
list.print_all

Deduper2.dedupe(list)

puts "Output: "
list.print_all
