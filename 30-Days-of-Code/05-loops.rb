#!/bin/ruby

require 'json'
require 'stringio'

n = gets.to_i
result = 0

for i in (1..10)
    result = n * i
    puts "#{n} x #{i} = #{result}"
end
