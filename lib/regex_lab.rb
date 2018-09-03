require 'pry'
def starts_with_a_vowel?(word)
   a = word.scan(/\b[aeiou]/i)
   if a == []
     false
   else
     true
   end
end


def words_starting_with_un_and_ending_with_ing(text)
 text.scan(/\bun\w*\ing\b/i)


end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/\A[A-Z].*\./) !=  nil ? true : false
end

def valid_phone_number?(phone)
  phone.match(/\D?\d{3}\D?\d{3}\D?\d{4}$/) !=  nil ? true : false
end
