def starts_with_a_vowel?(word)
  if word.match(/\b[aeiou|AEIOU]\w*/)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z][\s\S]*\W$/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\(?[0-9]{3}?\)?\s?[0-9]{3}[-]?\s?[0-9]{4}|[0-9]{10}/)
    true
  else
    false
  end
end
