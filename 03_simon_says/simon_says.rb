def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, n = 2)
	((input + ' ') * n).chomp(' ') # chomp here only removes the last one I suppose
end

def start_of_word(input, n)
	input[0..(n - 1)]
end

def first_word(input)
	input.split(' ')[0]
end

def titleize(input)
	input = input.split.map(&:capitalize).join(' ').gsub(/And/, 'and').gsub(/The/, 'the').gsub(/For/, 'for').gsub(/Over/, 'over')
	input[0] = input[0].capitalize
	input
end