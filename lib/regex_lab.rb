def starts_with_a_vowel?(word)
  word[0].match(/[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\S+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\S{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].+[[:punct:]]$/) ? true : false
end

def valid_phone_number?(phone)
  phone.match(/[^a-zA-Z]+[0-9]$/) ? true : false
end
