#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  # to count positive number
  positive = arr.count { |x| x>0 }
  # to count negative number
  negative = arr.count { |x| x<0 }
  # to count 0
  nolnumber = arr.count { |x| x==0 }

  arrlength = arr.length

  positive = positive.to_f / arrlength.to_f
  negative = negative.to_f / arrlength.to_f
  nolnumber = nolnumber.to_f/ arrlength.to_f

  puts '%.6f' % positive
  puts '%.6f' % negative
  puts '%.6f' % nolnumber

end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

arr = arr[0,n]
plusMinus arr
