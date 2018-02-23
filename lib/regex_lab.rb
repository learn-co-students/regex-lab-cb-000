def starts_with_a_vowel?(word)
  !!(/\A[aeiouAEIOU]/ =~ word)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun[a-z]*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/\b[A-Z][a-z]*\b\S\s/)
end

def valid_phone_number?(phone)
  case phone
  when /\d{10}/
    true
  when /\d{3} \d{3} \d{4}/
    true
  when /\(\d{3}\)\d{7}/
    true
  when /\(\d{3}\)\d{3}-\d{4}/
    true
  else
    false
  end
end
