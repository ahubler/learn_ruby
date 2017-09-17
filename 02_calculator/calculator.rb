#write your code here
def add(first_number, second_number)#Simple addition
	first_number + second_number
end

def subtract(first_number, second_number)#Simple subtraction
	first_number - second_number
end

def sum(number_array)#Sums all the values in an array
	if number_array.length > 0#if the array is not empty
		total = 0
		number_array.each {|i| total += i}#add the value of each element to the total
		total#retun the total
	else
		total = 0#if the array is empty
	end
end

def multiply(*p)#Multiplies any number of arguments
	if p.length > 0
		product = 1
		p.each{|i| product *= i}#multiplies al the elements together
		product
	else
		product = 0
	end
end

def power(number, exponent)#calculates number^exponent
	number ** exponent
end

def factorial(number)#calculates n! of number
	if number > 1 #n! of 0 and 1 is just 1, so we don't need to calculate that
		i = 1
		number_factorial = 1
		while i <= number #i will iterate through all positive integers less than or equal to number
			number_factorial *= i
			i += 1
		end
		number_factorial
	else 
		number_factorial = 1	
	end
end