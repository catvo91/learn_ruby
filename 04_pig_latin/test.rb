

def translate(s)
	s = s.split
	puts s.to_s
	puts s.length
	answer = ''
	i = 0
	while i < s.length 
		puts i.to_s + ' this is i going into the while loop'
	if s[i][0] == ('a' || 'e' || 'i' || 'o' || 'u')
		puts s[i][0]
		answer += s[i] + 'ay' + ' ' #this is the problem, s is an array now
		puts answer
	else
		if s[i][1] == ('a' || 'e' || 'i' || 'o' || 'u') #if the second letter is a vowel (ie only one starting consenant)
			firstLetters = s[i].slice!(0)
			puts firstLetters + ' first letters'
			answer += s[i] + firstLetters + 'ay' + ' '
		else
			firstLetters = s[i].slice!(0..1) # if the second letter is a consenent
			answer += s[i] + firstLetters + 'ay' + ' ' # problem here
			puts i.to_s + ' in this else loop' # so it says i is not an integer here
			puts s[i][1] + ' is the second letter'
			puts firstLetters + ' first letters 2'
			puts answer
		end
	end
		i += 1
		puts i.to_s + ' this is i going out of the loop'
	end
end

translate('apple pie')
#            0    1
# now outputting appleay epiay