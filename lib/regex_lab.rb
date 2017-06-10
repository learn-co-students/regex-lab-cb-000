def starts_with_a_vowel?(word)
  if word.match(/\A[aeiou]|[AEIOU]\w+/)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.split.grep(/\A\w{5}\Z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].+\W$/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  # valid numbers are 10 digits long, have no letters in them
  if phone.gsub(/\D/,"").length == 10
    true
  else
    false
  end
end
