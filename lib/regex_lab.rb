def starts_with_a_vowel?(word)
  word.match(/\A[aeiouy]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
   text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.split().grep(/^\w{5}$/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].+[.?!]$/) ? true : false
end

def valid_phone_number?(phone)
  phone.match(/\W?\d{3}\W?\d{3}\W?\d{4}$/) ? true : false
end
