
def starts_with_a_vowel?(word)
  if word.match(/\b[aeouiAEOUI]\w*\b/)
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split(' ').grep(/^un.*ing/)
end


def words_five_letters_long(text)
  text.split(" ").grep(/^\w{5}$/)
end


def first_word_capitalized_and_ends_with_punctuation?(text)
  
  if text.match(/^[A-Z].*\.$/) 
    return true
  else
    return false
  end
  
end

def valid_phone_number?(phone)
  if phone.match(/^[0-9\(\)\-\s]*[^a-zA-Z]\d$/) != nil
    return true
  else
    return false
  end
end
