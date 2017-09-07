
def starts_with_a_vowel?(word)
word  =~ /\b[aeiouAEIOU]/ ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
words = text.scan(/\bun\w+ing/)
 words
end


def words_five_letters_long(text)
words = text.scan(/\b\w{5}\b/)
end


def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z][\s\S]+\.$/).empty?
      false
    else
       true

    end
end

def valid_phone_number?(phone)
  phone.scan(/\b\(?\d{3}\)?\s?-?\d{3}-?\s?\d{4}\b/).empty? ? false : true
end
