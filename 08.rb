# arr = [1,2,3,4]
# arr.each do |ss|
#   # puts index
#   puts "s"
# end

#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    arr.each_with_index do |val, i|
      # puts "#{arr[i]} -- #{val}"
    end

    return 12
end

fptr = File.open('OUTPUT_PATH.txt', 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference(arr)

fptr.write result
fptr.write "\n"

fptr.close()
