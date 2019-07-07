#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr, n)
    # Write your code here
    # num = 3
    # puts num
    l_idx = 0
    l_str = 0

    r_idx = (n - 1)
    r_str = 0

    arr.each_with_index do |v,i|
      # from left side
      l_str = l_str + arr[i][l_idx]
      l_idx = l_idx + 1
      # from right side
      r_str = r_str + arr[i][r_idx]
      r_idx = r_idx - 1
    end

    puts (l_str - r_str).abs()

end

fptr = File.open('OUTPUT_PATH.txt', 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference(arr, n)

fptr.write result
fptr.write "\n"

fptr.close()
