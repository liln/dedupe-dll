# Deduplicating a Doubly Linked List

## Problem

Start with a doubly-linked list of 200 nodes with random values between 1 and 100. Now remove any nodes as required, so that each value is only in the list no more than one time.

An example with values less than 10:

Input:

 8 <=> 4 <=> 2 <=> 4 <=> 9 <=> 4 <=> 8 <=> 8 <=> 1 <=> 3

Output:

 8 <=> 4 <=> 2 <=> 9 <=> 1 <=> 3

## Solution 1

The first solution, `deduper.rb`, uses an Array to store the count of the values 1 to 100. In the first pass of the doubly-linked list, the count for each value is accumulated. In the second pass, duplicates are deleted. The delete_node method is part of the DLList class, and this algorithm has a Big O of n.

```
ruby lib/problem.rb
```


## Solution 2

Without using the Array to store the values, two pointers are used to traverse the linked list, as shown in `deduper2.rb`. As the first pointer traverses the list, the second pointer goes ahead to the end, deleting all the duplicate values. This algorithm has a Big O of n^2.

```
ruby lib/problem2.rb
```

## Author

[Lillian Ng](https://github.com/orangeninjamidget)

## License

MIT: [http://lng.mit-license.org](http://lng.mit-license.org)
