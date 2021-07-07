
def starts_with_a_vowel?(word)
  word.scan(/\b[aeiouAEIOU]/).empty? ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\.*\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\b[A-Z]\w*[,.?!]/).empty? ? false : true
end

def valid_phone_number?(phone)
  phone.scan(/([(]\b\d{3}[- \S]\d{3}[- ]\d{4})|(\b(\d{3})(\d{3})(\d{4}))|(\b(\d{3})[- ](\d{3})[- ](\d{4}))|[(](\b(\d{3})[)](\d{3})(\d{4}))/).empty? ? false : true
end
