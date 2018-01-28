def starts_with_a_vowel?(word)
  return true if word.match(/^[aeiouAEIOU]/)
  false
end

def words_starting_with_un_and_ending_with_ing(text)
  return false unless text =~ /un\w+ing/
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return true if text =~ /^[A-Z].*\W$/
  false
end

def valid_phone_number?(phone)
  return true if phone =~ /[0-9()]{3,5}[- ]?\d{3}[- ]?\d{4}/
  false
end
