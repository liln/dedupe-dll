module Deduper
  def dedupe(list)
    count = Array.new(100, 0) # assume only numbers 1 - 100
    n1 = list.head
    while n1 do
      count[n1.value - 1] += 1
      n1 = n1.nexxt
    end

    n1 = list.tail
    while n1 do
      count[n1.value - 1] -= 1
      if count[n1.value - 1] > 0
        n2 = n1
        n1 = n1.prev
        list.delete_node(n2)
      else
        n1 = n1.prev
      end
    end
  end
end
