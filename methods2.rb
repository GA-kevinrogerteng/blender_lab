#methods with 2 arguments or variables

def add_two_arguments (num1, num2=3) #you can set a default value
	#for your arguments. However, if you set a parameter for num2
	#the parameter will replace the constant value
	results = num1 + num2
	return results.round(2)
end

#puts add_two_arguments(3,5)
puts add_two_arguments(4.5, 2.5).round(2)

def add_array_of_numbers (num_array)
	sum = 0
	#num_array.each {|num| sum += num}
	#return sum

end

number_array = [1,2,3,4,5]

result = add_array_of_numbers(number_array)

# Returns the sum of two or more numbers
# *rest collects the excess parameters
def add_arguments(num1, num2, *rest)
 puts num1
 puts num2
 puts rest
 if rest.empty?
   return num1 + num2
 else
   rest.push(num1)
   rest.push(num2)
   rest.inject(0) {|sum,num| sum += num }
 end
end

puts "Adding multiple argumets: #{add_arguments(1,2,3,4,5)}"
# num1 = 1
# num2 = 2
# rest = [3, 4, 5]
# Adding multiple argument: 15

puts "Adding two arguments: #{add_arguments(2,3)}"
# num1 = 1
# num2 = 2
# rest = []
# Adding two arguments: 5