#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

# arr[0,n] this for select from array index 0 until (n-1)
# reverse() or sort()
# .join(' ') to join space ex: [1,2,3,4] become 1 2 3 4 

puts arr[0,n].reverse().join(' ')
