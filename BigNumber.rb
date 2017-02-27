class BigNumber
	def initialize()
	end
	def setNumber (nameFile) 
		digits = 1000000 * 20000
		numSet = ""
		randomNum = rand(48..57)
		for i in 0..(digits-1)
			numSet << randomNum
		end
		return numSet
	end
	def length (number1,number2)
		if number1.length >= number2.length
			length = number1.length - 1
		else
			length = number2.length - 1
		end
		return length
	end
	def count(number1,number2,i)
		tod = 0
		count = ""
		sum = ""
		while i >= 0
			count = number1[i].to_i + number2[i].to_i + tod
			if count >= 10
				tod = 1
				if i != 0
					count -= 10
				end
			else tod = 0
			end
			sum = count.to_s + sum
			i -= 1
		end
		return sum
	end
	def save(sum)
		open('ResultBigNumber.out', 'w') do |f|
 		 f.<< sum
		end
	end
end 

bNumber = BigNumber.new()
number1 = bNumber.setNumber("number1")
number2 = bNumber.setNumber("number2")
length = bNumber.length(number1,number2)
sum = bNumber.count(number1,number2,length)
bNumber.save(sum)
puts "Answer : #{sum} " 
puts "----------------------------"
puts "Number1 : #{number1[0]}"  
puts "Number2 : #{number2[0]}"  