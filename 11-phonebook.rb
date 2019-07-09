def findPhoneBook(arrData, arrFind)

  # puts arrData[0][0].include? ('sam')

  # puts 2 > 3 ? "truex" : "falsex"
  # puts (arrData.select { |n| n[0] == 'sam' }) != nil ? true : false

  # res = arrData.select{ |n| n[0] == 'sam' }
  # if res.length > 0
  #   puts res.join(' ')
  # else
  #   puts 'Not found'
  # end

  arrFind.each_with_index do |val,i|
    cx = val
    res = arrData.select{ |n| n[0].eql? cx }
    if res.length > 0
      puts res.join(' ')
    else
      puts 'Not found'
    end
    # puts arrFind[i]
    # puts arrData.select{ |value| value[0].include? arrFind[i] }
    # puts arrData.select{ |value| value.include? 'sam' }
    # [ [user1,true], [user2,true], [user3,false] ].detect { |user, boolean| user.id == 2 }
    # puts arrData.detect { |str1, str2| str1 == arrFind[i] }
  end


end

# {condition} ? {if-code-block} : {else-code-block}

# cx = 'ss'
# if cx.to_s.empty?
#   puts "Yes Empty"
# else
#   puts "Not Empty"
# end

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
