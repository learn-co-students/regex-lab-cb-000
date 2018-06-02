def starts_with_a_vowel?(word)
    word.scan(/^[aeiouAEIOU]/).size == 0 ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un[a-z]*ing/)
end

def words_five_letters_long(text)
    text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match(/^[A-Z].*\W$/) == nil ? false : true
end

def valid_phone_number?(phone)
    phone.scan(/\d/).size == 10 ? true : false
end
