require 'pry'


def starts_with_a_vowel?(word)
     if word[0].match(/[aeiou]/) || word[0].match(/[AEIOU]/)
       return true
     else
       false
     end
end

def words_starting_with_un_and_ending_with_ing(text)
         text.scan(/un\w+\w+ing/)
end

def words_five_letters_long(text)
    text.scan(/\b[a-zA-z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
          if text.match(/^[A-Z].+[[:punct:]]\z/)
            return true
           elsif text.match(/^[a-z]+\W/)
            return false
          elsif text.match(/^[A-Z][a-z]+/)
            return false
          elsif text.match(/^[a-z]+/)
            return false
          end


end

def valid_phone_number?(phone)
    if phone.match(/^[1]?\s?\(?\d{3}\)?\s?\.?\-?\d{3}\s?\.?\-?\d{4}$/)
      return true
    end
end
