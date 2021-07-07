def starts_with_a_vowel?(word)
  if word.match(/^[aeiou]/i)
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  return text.scan(/un\w{1,15}ing/i)
end

def words_five_letters_long(text)
  return text.scan(/\b\w{5}\b/i)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  array = text.scan(/["']?[A-Z][^.?!]+(?![.?!]['"]?\s["']?[A-Z][^.?!]).+[.?!'"]+/)
  if array[0] == text
    return true
  else return false
  end
end

def valid_phone_number?(phone)
    if phone.match(/(\d{3})\D?(\d{3})\D?(\d{4})/) != nil
    return true
  else return false
  end
end

text = "unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary"
puts words_starting_with_un_and_ending_with_ing(text)
