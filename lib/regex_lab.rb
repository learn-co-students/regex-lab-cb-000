def starts_with_a_vowel?(word)
  return true if word.match(/^[aeiouAEIOU]/)
  false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return true if text.match(/^[A-Z].*[.!]$/)
  false
end

def valid_phone_number?(phone)
  return true if phone.match(/\d{3}.*\d{3}.*\d{3}/)
  false
end
