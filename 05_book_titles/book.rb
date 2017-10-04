class Book
	def title
		@title
	end
	def title=(value)
		@title = titleize(value)
	end

	def titleize(message)#capitalizes the 1st letter of each word, excluding small words, and 1st word is always capitalized
		small_words = ['and', 'or', 'the', 'over', 'in', 'of', 'a', 'an']#these words will not be capitalized unless they are the 1st word
		if message.include? " "#if message has multiple words
			message = message.split " "
			message[0].capitalize!#always capitalize the first word
			message.each do |w|
				unless small_words.include? w#only capitalize words if they are not in small_words
					w.capitalize!
				end
			end
			message.join(' ')#put it all back together
		else
			message.capitalize!#if message is just one word, capitalize it no matter what it is
		end
	end
end
