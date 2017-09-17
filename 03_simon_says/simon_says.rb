#write your code here
def echo(message)#echos back whatever it receives
	message
end

def shout(message)#echos back in all caps
	message.upcase
end

def repeat(message, repetitions = 2)#repeates the message multiple times
	full_message = message
	i = repetitions -1
	while i > 0
		full_message += " " + message
		i -= 1
	end
	full_message
end

def start_of_word(word, position)#gives the first letters of a word up to the given position
	start = word[0...position]
end

def first_word(message)#gives the first word of a string
	message.split(' ')[0]
end

def titleize(message)#capitalizes the 1st letter of each word, excluding small words, and 1st word is always capitalized
	small_words = ['and', 'or', 'the', 'over']#these words will not be capitalized unless they are the 1st word
	if message.include? " "#if messag is multiple words
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
