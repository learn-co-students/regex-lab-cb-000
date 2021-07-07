def starts_with_a_vowel?(word)
  array = []
  array = word.scan(/\b+[aeiouAEIOU]/)
  if array.empty?
    return false
  else
    return true
  end
  return array
end

def words_starting_with_un_and_ending_with_ing(text)
  array = []
  array = text.scan(/\bun[a-z]*ing\b/)
  return array
end

def words_five_letters_long(text)
  array = text.scan(/\b[a-zA-z]{5}\b/)
  return array
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  array = text.scan(/\A\b[A-Z][\s\S]*\W\z/)
  if array.empty?
    return false
  else
    return true
  end
end

def valid_phone_number?(phone)
  array = []
  array = phone.scan(/[\d]/)
  if array.length == 10
    return true
  else
    return false
  end
end
