def starts_with_a_vowel?(word)
  word[0].downcase.match(/[aeiou]/) == nil ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\S{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/^[A-Z]|\W\z/).length == 2 ? true : false
end

def valid_phone_number?(phone)
  phone.match(/^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/) == nil ? false : true
end
