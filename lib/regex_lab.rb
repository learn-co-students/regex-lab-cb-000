def starts_with_a_vowel?(word)
    # returns true for words starting with a wovel
    # returns false for words starting with a constant
    !!word.match(/^[aeiouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
    # returns an array with the words starting with 'un' and ending with 'ing'
    text.scan(/un\w*ing/)
end

def words_five_letters_long(text)
    # returns an array of words that are five letters long
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    # Returns true for text starting with a capital letter and ending with puncutation
    # Returns false for text starting with an uncapitalized letter but ending with puncutation
    # Returns false for text starting with a capital letter but ending without puncutation
    # Returns false for text starting without a capital letter and ending without puncutation
    !!text.match(/^[A-Z].*\W$/)
end

def valid_phone_number?(phone)
    # returns true for valid phone numbers, regardless of formatting
    # returns false for invakid phone numbers, regardless of formatting
    phone.gsub(/\D/, '').length == 10
end
