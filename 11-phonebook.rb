def findPhoneBook(arrData, arrFind)

  # puts arrData[0][0].include? ('sam')
  # puts 2 > 3 ? "truex" : "falsex"
  # puts (arrData.select { |n| n[0] == 'sam' }) != nil ? true : false

  arrFind.each_with_index do |val,i|
    res = arrData.select{ |n| n[0].eql? arrFind[i][0] }
    if res.length > 0
      puts res.join('=')
    else
      puts 'Not found'
    end
  end

end


n = gets.to_i

arr = Array.new(2)
arrData = Array.new(n)
arrFind = Array.new(n)

puts "Enter the Data:"
n.times do |i|
    arr = gets.rstrip.split(' ').map(&:to_s)
    arrData[i] = arr
end

puts "Find Data:"
n.times do |i|
  arrFind[i] = gets.strip.split.map(&:to_s)
end

puts "The Result:"
findPhoneBook(arrData, arrFind)
