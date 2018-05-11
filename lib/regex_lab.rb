def starts_with_a_vowel?(word)
  word.scan(/\b[aeiou]/i) != [] ? TRUE : FALSE
end



def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun*\w*ing\b/i)
end



def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/i)
end



def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\b[A-Z]{1}\w*[[:punct:]]\W/) != [] ? TRUE : FALSE
end



def valid_phone_number?(phone)
  digits_array = phone.scan(/\d/)
  digits_array.size == 10 ? TRUE : FALSE
end
