hashMap = {}

n = gets.chomp.to_i

n.times do
  arr = gets.chomp.split(" ")
  hashMap[arr[0]] = arr[1]
end

while true
  query = gets
  break unless query
  name = query.chomp
  if hashMap.key?(name)
    puts "#{name}=#{hashMap[name]}"
  else
    puts "Not found"
  end
end
