def starts_with_a_vowel?(word)
  word.match(/\A[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*[.?!]$/) ? true : false
end

def valid_phone_number?(phone)
  # Allow parentheses for area code
  # Allow spaces or dashes between phone number groups
  phone.match(/^\(*\d{3}\)*\s*-*\d{3}\s*-*\d{4}$/) ? true : false
end
