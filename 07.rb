#!/bin/ruby

require 'json'
require 'stringio'

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)
  return ar.sum
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('OUTPUT_PATH.txt', 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()
