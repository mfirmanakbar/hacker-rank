
require 'json'
require 'stringio'

def compareTriplets(a, b)
  result = []
  alice = 0
  bob = 0

  for i in (0..2) do
    if a[i] > b[i]
      alice = alice + 1
    elsif a[i] < b[i]
      bob = bob + 1
    end
  end

  result.push(alice)
  result.push(bob)

  return result
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
fptr = File.open('OUTPUT_PATH.txt', 'w')

a = gets.rstrip.split.map(&:to_i)
b = gets.rstrip.split.map(&:to_i)

result = compareTriplets(a, b)
puts result.join(" ")

fptr.write result.join(" ")
fptr.write "\n"
fptr.close()
