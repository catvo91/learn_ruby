def translate(s)
	if s[0] == ('a' || 'e' || 'i' || 'o' || 'u')
		s + 'ay'
	else
		if s[1] == ('a' || 'e' || 'i' || 'o' || 'u') #if the second letter is a vowel
			firstLetters = s.slice!(0)
			s + firstLetters + 'ay'
		else #if the second letter is consenant 
			firstLetters = s.slice!(0..1)
			s + firstLetters + 'ay'
		end
	end
end

#cherry 