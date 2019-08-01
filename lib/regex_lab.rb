def starts_with_a_vowel?(word)
  word.match(/^[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un+\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/\.\z/) && text.match(/\A[A-Z]/) ? true : false
end

def valid_phone_number?(phone)
  phone.gsub(/\D/, '').match(/\A\d{10}\z/) ? true : false
end

valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]

invalid_numbers = ["28894546", "(718)891-13135", "234 43 9978", "(800)IloveNY"]
