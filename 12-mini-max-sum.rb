#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)

  arrResult = Array.new(arr.length)

  arr.each_with_index do |v,i|
    result = (arr.sum - v)
    arrResult[i] = result
  end

  puts "#{arrResult.min} #{arrResult.max}"

end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
