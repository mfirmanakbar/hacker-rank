#!/bin/ruby

require 'json'
require 'stringio'

# Complete the factorial function below.
def factorial(n)
  result = 1
  (1..n).each do |n|
    result *= n
  end
  return result
end

fptr = File.open('OUTPUT_PATH.txt', 'w')

n = gets.to_i

result = factorial n
puts result

fptr.write result
fptr.write "\n"

fptr.close()
