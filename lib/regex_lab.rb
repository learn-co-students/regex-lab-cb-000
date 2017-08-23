def starts_with_a_vowel?(word)
  return true if word.match(/\b[aeiou]/i)
  return false

end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing\b/i)
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/i)

end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return true if text.match(/\A[A-Z]/) && text.match(/[.,;:]\z/)
  return false

end

def valid_phone_number?(phone)
  return true if phone.match(/\(?[0-9]{3}\)?\s*[0-9]{3}-?\s*[0-9]{4}/)
  return false

end
