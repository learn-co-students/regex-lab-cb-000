def starts_with_a_vowel?(word)
  if word.match(/\A[aeiouAEIOU]/)
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  words_with_uning=text.scan(/\b[u][n][a-z]*[i][n][g]\b/)
  return words_with_uning
end

def words_five_letters_long(text)
  five_letters=text.scan(/\b[a-zA-Z]{5}\b/)
  return five_letters
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z]/) && text.match(/[?|.|!]$/)
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\b[0-9]{3}\D?[0-9]{3}\D?[0-9]{4}\b/)
    return true
  else
    return false
  end
end
