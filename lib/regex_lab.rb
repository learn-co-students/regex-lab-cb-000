#require "pry"
#
#match = %w{ afoot Excellent incredible Absolute unreal Inconceivable octopus }

def starts_with_a_vowel?(word)
  !word.match(/\b([aeiou]|[AEIOU])[a-z]+/).nil?
end

#match.each do |word|
#  starts_with_a_vowel?(word)
#end
#
#binding.pry

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[un][a-z]+[ing]/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !text.match(/^[A-Z].+\./).nil?
end

def valid_phone_number?(phone)
  !phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/).nil?
end
