def starts_with_a_vowel?(word)
  if word =~ /\A[aeiouAEIOU]\w+/
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text =~ /\A[A-Z].+[.?!]\z/
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  case phone
  when /\(\d{3}\)\d{3}-\d{4}/
    true
  when /\(\d{3}\)\d{3}\d{4}/
    true
  when /\d{3}\s\d{3}\s\d{4}/
    true
  when /\d{10}/
    true
  else
    false
  end
end
