#!/bin/ruby

require 'json'
require 'stringio'

N = gets.to_i

# (1...5) it means 1 until 4 is true

if (N.odd?) or (N.even? and (6...21)===N)
    puts "Weird"
elsif (N.even? and (2...6)===N) or (N.even? and N > 20)
    puts "Not Weird"
end
