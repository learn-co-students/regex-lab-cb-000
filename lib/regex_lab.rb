def starts_with_a_vowel?(word)
  if word[0].match(/[aeiou]|[AEIOU]/)
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un+\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text[0].match(/[A-Z]/) && text[text.length-1].match(/[!]|[.]|[?]/)
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  phone_number = phone.scan(/[0-9]/)
  if phone_number.length == 10
    return true
  else
    return false
  end
end
