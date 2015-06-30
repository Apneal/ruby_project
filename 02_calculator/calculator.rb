def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(nums)
	total = 0.0
	if nums.length > 0 then
		nums.each do |item|
			total += item.to_f
		end
	end
	return total
end

def multiply(*nums)
	total = 0.0
	if nums.length > 0 then
		total = 1.0
		nums.each do |item|
			total = total * item.to_f
		end
	end
	return total
end

def power(num, exponent)
	if exponent.integer? then
		i = 0
		tempnum = 1
		while i < exponent.abs do
			tempnum = tempnum * num
			i += 1
		end 
		if exponent < 0 then
			tempnum = 1 / tempnum.to_f
		end
		return tempnum
	else
		return Math.exp(exponent * Math.log(num))
	end
end

def factorial(num)
	i=0
	tempnum = 1
	while i < num do
		i += 1
		tempnum = tempnum * i
	end
	return tempnum
end