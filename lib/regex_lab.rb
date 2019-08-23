def starts_with_a_vowel?(word)
  word.match(/\A[aeiouAEIOU]/)? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
words=text.scan(/un[a-z]*ing/)
words
end

def words_five_letters_long(text)
words=text.scan(/\b[a-zA-Z]{5}\b/)
words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
text.match(/^[A-Z].*\W\z/) ? true : false
end

def valid_phone_number?(phone)
phone.match(/\d{3}.*\d{3}.*\d{3}/) == nil ? false : true
end
