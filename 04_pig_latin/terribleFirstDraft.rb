def translate(s)
	s = s.split
	answer = ''
	i = 0
	while i < s.length 
	if s[i][0] == 'a' || s[i][0] == 'e' || s[i][0] == 'i' || s[i][0] == 'o' || s[i][0] == 'u'
		answer += s[i] + 'ay' + ' ' #this is the problem, s is an array now
		puts answer
	else #should refactor this to say, if the first letter is a consenent, check if the second is one, than the third
		if s[i][1] == 'a' || s[i][1] == 'e' || s[i][1] == 'i' || s[i][1] == 'o' || s[i][1] == 'u' #if the second letter is a vowel (ie only one starting consenant)
			firstLetters = s[i].slice!(0)
			answer += s[i] + firstLetters + 'ay' + ' '
			puts answer
		else
			firstLetters = s[i].slice!(0..1) # if the second letter is a consenent
			answer += s[i] + firstLetters + 'ay' + ' ' # problem here
			puts answer
		end
	end
		i += 1
	end
	answer = answer.rstrip()
end

puts translate('apple')
puts translate('banana')
puts translate('cherry')
puts translate('eat pie')
puts translate('three')
#            1    1
# now outputting appleay epiay