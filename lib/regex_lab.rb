def starts_with_a_vowel?(word)
  word.match(/\b[^aeiouAEIOU]/) == nil ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un?[\S]*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
   text.match(/^[A-Z].+[\.!?]$/) == nil ? false : true
end

def valid_phone_number?(phone)
 phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/)
end

sent = "i wondered why the baseball was getting bigger. Then it hit me."
sent1 = "I stepped on a Corn Flake, now I'm a cereal killer."
puts first_word_capitalized_and_ends_with_punctuation?(sent1)
