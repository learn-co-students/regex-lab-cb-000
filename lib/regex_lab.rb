def starts_with_a_vowel?(word)
  !word.scan(/\b[aeiouAEIOU]/).empty?
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-zA-Z]*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    # text.match(/\w[A-Z]+[A-z].*['!','?','.']/)
   # !text.match(/^[A-Z].+[\.!?]$/).to_s.empty?
     !text.match(/^[A-Z].+[\.!?]+$/).to_s.empty?
end

def valid_phone_number?(phone)
  phone.match(/[0-9]{10}|\([0-9]{3}\)[0-9]{3}-[0-9]{4}|[0-9]{3} [0-9]{3} [0-9]{4}|\([0-9]{3}\)[0-9]{7}/)
end
