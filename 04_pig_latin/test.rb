def translate(s)
	s = s.split
	answer = s.map do |word|
		word.capitalize
	end
end

puts translate('apple happy one two three')
