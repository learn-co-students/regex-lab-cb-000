def starts_with_a_vowel?(word)
    /^[aeiou]\w+/i.match(word) != nil
end

def words_starting_with_un_and_ending_with_ing(text)
    text.split(' ').select do |word|
        /^(un)\w+(ing)$/i.match(word) != nil
    end
end

def words_five_letters_long(text)
    text.split(' ').select do |word|
        /\b\w{5}\b/i.match(word) != nil
    end
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    /^[A-Z].+[\.!?]$/.match(text) != nil
end

def valid_phone_number?(phone)
    /[(]?\d{3}[) ]?\d{3}[- ]?\d{4}/.match(phone) != nil
end
