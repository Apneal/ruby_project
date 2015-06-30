def echo(input)
	return input
end

def shout(input)
	return input.upcase
end

def repeat(input, repetitions=2)
	i = 1
	simon_says = input
	while i < repetitions do
		i += 1
		simon_says += " " + input
	end
	return simon_says
end

def start_of_word(input, length)
	return input[0..length-1]
end

def first_word(input)
	return input.split(" ")[0]
end

def titleize(input)
	input_array = input.split(" ")
	i = 0
	output_array = input_array.collect{|word|
		if ["and", "over", "the"].include? word then
			word
		else 
			word.capitalize
		end
		}
	output_array[0] = output_array[0].capitalize
	output_string = output_array.join(" ")
	return output_string
end