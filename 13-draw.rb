#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
    n.times do |i|
      space = ' ' * (n-(i+1))
      pagar = "#" * (n - (n-(i+1)))
      puts "#{space}#{pagar}"
    end
end

n = gets.to_i

staircase n
