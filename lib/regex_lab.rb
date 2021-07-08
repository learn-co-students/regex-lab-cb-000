def starts_with_a_vowel?(word)
  result_array = word.scan(/\b[AEIOUaeiou][A-Za-z]*\b/)
  if word == result_array[0].to_s
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  return text.scan(/un\w+ing\b/)
end

def words_five_letters_long(text)
  return text.scan(/\b[a-z]{5}\b/)
end
  
def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].+\W$/)
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  return phone.match (/.?\d{3}.?\d{3}.?\d{4}\b/)
end
