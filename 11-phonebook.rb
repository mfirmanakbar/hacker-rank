hashMap = {}

n = gets.chomp.to_i

n.times do
# for x in 0..n-1
  arr = gets.chomp.split(" ")
  hashMap[arr[0]] = arr[1]
end

puts hashMap

while true
  query = gets
  # unless is nataged if or false condition.
  # it means beak will execute if something wrong with variable query or !query
  break unless query
  # chomp for clean breakline, because 'gets.' function by default has a breakline
  name = query.chomp
  if hashMap.key?(name)
    puts "#{name}=#{hashMap[name]}"
  else
    puts "Not found"
  end
end
