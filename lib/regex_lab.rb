def starts_with_a_vowel?(word)
  !!/^[aeiou]/i.match(word)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un.*?ing/i)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!/^[A-Z].*?\W$/.match(text)
end

def valid_phone_number?(phone)
  !!/[\(|\s]{,1}\d{3}[\)|\s]{,1}\d{3}[\-|\s]{,1}\d{4}/.match(phone)
end
