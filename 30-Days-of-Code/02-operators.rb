#!/bin/ruby

require 'json'
require 'stringio'

# Complete the solve function below.
def solve(meal_cost, tip_percent, tax_percent)
    tip = (tip_percent.to_f/100) * meal_cost
    tax = (tax_percent.to_f/100) * meal_cost
    pay = meal_cost + tip + tax
    return pay.round()
end

meal_cost = gets.to_f
tip_percent = gets.to_i
tax_percent = gets.to_i

puts solve(meal_cost, tip_percent, tax_percent)
