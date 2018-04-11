def starts_with_a_vowel?(word)
  #word.scan(/^[aeiouAEIOU]/)

  if word.match(/^[aeiouAEIOU]/)
  #if word.scan(/\A[aeiouAEIOU]/)
    return true
  end
  #if word.scan(/\A[^aeiouAEIOU]/)
  if word.match(/^[^aeiouAEIOU]/)#==nil
    return false
  end


end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+\ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z].*[\.]$/)==[]
    false
  else
    true
  end

  #if text.scan(/^[A-Z].*[\.]$/) #==[] #.?+$[\.]
  #if text.scan(/^[A-Z]/) && text.scan(/[\.]$/)
    #true
  #elsif text.scan(/^[a-z].*[\.]$/)
    #false
  #end
  #else
    #false
  #end
end

def valid_phone_number?(phone)
  phone.match(/.?(\d{3}).?(\d{3}).?(\d{4})/)
  #if phone.scan(/\d{10}/) #!= nil
  #if phone.scan(/.?(\d{3}).?(\d{3}).?(\d{4})/)
    #true
  #end
  #else
    #false
  #end
end
