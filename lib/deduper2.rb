module Deduper2
  def dedupe(list)
    n1 = list.head
    while n1 do
      n2 = n1.nexxt
      while n2 do
        if n2.value == n1.value
          n3 = n2
          n2 = n2.nexxt
          list.delete_node(n3)
        else
          n2 = n2.nexxt
        end
      end
      n1 = n1.nexxt
    end
  end
end
