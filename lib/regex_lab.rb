def starts_with_a_vowel?(word)
  # arr = word.split("")[0].match(/[aeiou]/)
  # puts arr.inspect
  if word[0].match(/[aeiouAEIOU]/)
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
  if text[0].match(/[A-Z]/) && text[-1].match(/\W/)
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  if phone.scan(/\d+\d+\d+/).join("").length == 10
    return true
  else
    return false
  end
end

valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
valid_phone_number? "(718)891-1313"
