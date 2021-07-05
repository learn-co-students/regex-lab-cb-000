require 'pry'

def starts_with_a_vowel?(word)
  vowel_strings = word.scan(/\b[aeiouAEIOU]\w*/)
  !vowel_strings.empty?
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/[A-Z]\w+[\?\.\,]/) != nil ? true : false
end

def valid_phone_number?(phone)
  phone.match(/^((\+\d{1,2}|1)[\s.-]?)?\(?[2-9](?!11)\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/) != nil ? true : false
end
