def starts_with_a_vowel?(word)
  if word.match(/^[aeiouAEIOU]/)
    return true
  end
  false

end

def words_starting_with_un_and_ending_with_ing(text)
  result = []
  text.split(' ').each do |word|
    if word.match(/^(un.*)ing$/)
      result << word
    end
  end
  result
end

def words_five_letters_long(text)
  result = []
  text.split(' ').each do |word|
    if word.match(/^\w{5}$/)
      result << word
    end
  end
  result
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^([A-Z].*)\.$/)
    return true
  end
  false

end

def valid_phone_number?(phone)
  if phone.match(/(.*\d{3}.*)(\d{3}.*)(\d{4}.*)/)
    return true
  end
  false
end
