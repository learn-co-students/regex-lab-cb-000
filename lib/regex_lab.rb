def starts_with_a_vowel?(word)
  word.downcase!
  if word.match(/\A[aeiou]/) == nil
    return false
  else
    return true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text = text.split
  text.grep(/^(un|UN).*(ing|ING)$/)
end

def words_five_letters_long(text)
  text = text.split
  text.grep(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].*\W$/) == nil
    false
  else
    true
  end
end

def valid_phone_number?(phone)
  if phone.scan(/\d/).length == 10
    return true
  else
    return false
  end
end
