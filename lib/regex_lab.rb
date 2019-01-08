def starts_with_a_vowel?(word)
  !(word.match(/\b[aeiou]\w*/i).nil?)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[un]\w*[ing]/i)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  (!text.match(/\A[A-Z].*([.!?\\-])\z/).nil?)
end

def valid_phone_number?(phone)
  !(phone.match(/^(?:1-?)?[(]?\d{3}[)]?\s?-?\s?\d{3}\s?-?\s?\d{4}$/).nil?)
end
