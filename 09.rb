

def oddEven(arr)

  arr.each_with_index do |val,i|
    # puts "#{i} - #{val}"
    tempOdd = ""
    tempEven = ""
    sz = val.strip.size - 1

    for j in (0..sz) do
      # puts arr[i][j]
      # puts j
      if j.to_i.odd?
        tempOdd = tempOdd + arr[i][j]
      else
        tempEven = tempEven + arr[i][j]
      end
    end

    # puts "#{tempEven} #{tempOdd}"
    arr[i] = "#{tempEven} #{tempOdd}"
  end

  return arr
end


T  = gets.to_i
arr = Array.new

for i in (0..T-1) do
  arr[i] = gets.delete(' ').to_s
end

puts oddEven(arr)
