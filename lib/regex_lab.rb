def starts_with_a_vowel?(word)
  vowel = nil
  words = word.scan(/\A[aeiouAEIOU]/)
  if words.length > 0
    vowel = true
  else
    vowel = false
  end
  return vowel
end



def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un+\w+ing/)
end


def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end



def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/[A-Z]\w+[,.?!]/)
    return true
  else
    return false
  end
end




def valid_phone_number?(phone)
  if phone.match(/\d{10}/)
    return true
  elsif phone.match(/\b\d{3}\W\d{3}\W\d{4}\b/)
    return true
  elsif phone.match(/\W\d{3}\W\d{7}\b/)
    return true
  else
    return false
  end
end
