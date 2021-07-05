def starts_with_a_vowel?(word)
	if(word.match(/^[aeiou]/i) != nil)
		return true
	else
		return false
	end
end

def words_starting_with_un_and_ending_with_ing(text)
	text.scan(/\bun\w+ing\b/i)
end

def words_five_letters_long(text)
	text.scan(/\b\w{5}\b/) 
end

def first_word_capitalized_and_ends_with_punctuation?(text)
	if(text.match(/^[A-Z]{1}[A-Za-z,;'\s]+[.?!]$/) != nil)
		return true
	else
		false
	end

end

def valid_phone_number?(phone)
	if(phone.match(/[0-9\s()-]{10,13}/)) != nil
		return true
	else
		return false
	end
end
