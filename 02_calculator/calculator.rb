def add(x, y)
	return x + y
end

def subtract(x, y)
	return x - y
end

def sum(array)
	n = 0 #current thing
	sum = 0
	if array.length > 0
		while n < array.length
			sum += array[n]
			n += 1
		end
		return sum
	else
		return 0
	end
end

def multiply(array)
	if array.length >= 2
		n = 0
		answer = array[n]
		while n < array.length - 1
			n += 1
			answer = answer * array[n]
		end
		return answer
	end
end

def power(x, y)
	answer = x * x
	n = 3
	if y > 2
		while n <= y
			answer = answer * x
			n += 1
		end
		return answer
	elsif y == 1
		return x
	elsif y == 0
		return 1
	end
end

def factorial(x)
	if x == 1 || x == 0
		return 1
	else
		answer = x
		while x > 1
			x -= 1
			answer *= x
		end
		return answer
	end
end


# [2, 3, 5]
#  0  1  2
# .length = 3