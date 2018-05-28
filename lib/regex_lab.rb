def starts_with_a_vowel?(word)
  array = word.scan(/\b[aeiou]\w*/i)
  array.length == 0 ? false : true


end

def words_starting_with_un_and_ending_with_ing(text)
  array = text.scan(/\bun\w+ing\b/)
  array
end

def words_five_letters_long(text)
  array = text.scan(/\b\w{5}\b/)
  array


end

def first_word_capitalized_and_ends_with_punctuation?(text)
   array = text.scan(/\A[A-Z].*[.!]/)
   array.length == 0 ? false : true



end

def valid_phone_number?(phone)
   phone.match(/\(?\d{3}[)\s]?\d{3}[)\s-]?\d{4}\b/)


end

text = "Iceskating!"
text = "I stepped on a Corn Flake, now I'm a cereal killer."

first_word_capitalized_and_ends_with_punctuation?("Iceskating!")
first_word_capitalized_and_ends_with_punctuation?("iceskating")
