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

# this is for my local-PC
# fptr = File.open('OUTPUT_PATH.txt', 'w')
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

result = factorial n

fptr.write result
fptr.write "\n"

fptr.close()
