require 'pry'

def starts_with_a_vowel?(word)
  word.match(/\b[aeiouAEIOU]\w*/) != nil ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[Uu]n\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/\b[A-Z]\w*\p{P}\W/) != nil ? true : false
end

def valid_phone_number?(phone)
  phone.match(/[0-9]{0,2}(\s*|\p{P}*)[0-9]{3}(\s*|\p{P}*)[0-9]{3}(\s*|\p{P}*)[0-9]{4}(\s*|\p{P}*)/) != nil ? true : false
end
