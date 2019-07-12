
# we will using ruby slice

#!/bin/ruby

#
# Complete the timeConversion function below.
#
def timeConversion(s)
    #
    # Write your code here.
    #

end

# fp = File.open(ENV['OUTPUT_PATH'], 'w')
fp = File.open('OUTPUT_PATH.txt', 'w')

s = gets.to_s.rstrip

result = timeConversion s

fp.write result
fp.write "\n"

fp.close()
