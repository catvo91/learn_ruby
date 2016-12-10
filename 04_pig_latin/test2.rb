def pigLatinize(string)
 vowels = %w(a e i o u) #whats %w
 acceptableSecondCharacters = %w(h c r)

 words = string.split()

 translatedArray = words.map do |word|
   lastIndex = word.length - 1

   if vowels.include?(word[0]) #whats include?
     word = word
   elsif word[0] == 'q' && word[1] == 'u'
     word = word.slice(2, lastIndex) + word.slice(0, 2)
   elsif vowels.include?(word[1])
     word = word.slice(1, lastIndex) + word.slice(0)
   elsif acceptableSecondCharacters.include?(word[1])
     if word[2] == 'r' || word[2] == 'h'
       word = word.slice(3, lastIndex) + word.slice(0, 3)
     else
       word = word.slice(2, lastIndex) + word.slice(0, 2)
     end
   elsif word[0..2] == 'squ'
     word = word[3..lastIndex] + word[0..2]
   end
   word + 'ay'
 end

 puts translatedArray.join(' ')
 translatedArray
end

pigLatinize('apple banana cherry eat pie school quiet square three')