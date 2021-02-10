require 'pry'

def starts_with_a_vowel?(word)
  word.match(/\A[aeiou]/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  scan1 = text.scan(/\A[A-Z]/)
  scan2 = text.scan(/[.?!]$/)
  scan1 != [] && scan2 != [] ? true : false
end

def valid_phone_number?(phone)
  phone_valid = phone.scan(/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/)
  phone_valid != [] ? true : false
end
