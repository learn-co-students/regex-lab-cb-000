def starts_with_a_vowel?(word)
  word.match(/\b[aeiouAEIOU]/) != nil
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b+un\w*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*\W\z/) != nil
end

def valid_phone_number?(phone)
  return false if phone.match(/.?(\d{3}).?(\d{3}).?(\d{4})/) == nil
  numbers = phone.scan(/.?(\d{3}).?(\d{3}).?(\d{4})/)
  numbers[0][0].size == 3 && numbers[0][1].size == 3 && numbers[0][2].size == 4
end
