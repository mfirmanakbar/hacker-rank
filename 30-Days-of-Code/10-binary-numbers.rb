#!/bin/ruby

require 'json'
require 'stringio'



# why 2 for .to_s(2) ?
# because 2 is representative for base-2 as binner 0/1
# special way

n = gets.to_i
binner = n.to_s(2)
arr = binner.split('0')
puts arr.max.length

# basic way
# n = gets.to_i
# sum = 0
# max = 0
# while n > 0
#   if n.odd?
#     sum += 1
#     max = sum if sum > max
#   else sum = 0
#   end
#   n /= 2
# end
# puts max
