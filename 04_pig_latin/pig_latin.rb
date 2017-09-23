#Converts message into pig latin
VOWELS = ["A","a","E","e","I","i","O","o","U","u"]
def translate(message)
	if message.include? " " #if message has multiple words
		message = message.split " "
		message.map! do |w|
			translate(w)
		end
		message = message.join(' ') #put it all back together
	else # if message is a single word 
		if VOWELS.include? message[0] #check if the word starts with a vowel or a consonant then translate it
			translation = convert_vowel_sound(message)
		else
			translation = convert_consonant_sound(message)
		end
	end 
end

def convert_vowel_sound(word)#translates words that start with a vowel
	word = word + "ay"
end

def convert_consonant_sound(word)#translates words that start with a consonant
	consonants = "" #this will conatain all the consonants that will be moved to the end of the word
	while word.length > 0 
		unless VOWELS.include? word[0] #go until the first vowel
			if word.slice(0, 2) == "qu" #'qu' will be treated as one consonant
				consonants = consonants + word.slice!(0,2)
			else
				consonants = consonants + word.slice!(0) #slice each consonant off of the word and store it in consonants
			end
		else
			break
		end
	end
	word = word + consonants + "ay" #put the word back together
end