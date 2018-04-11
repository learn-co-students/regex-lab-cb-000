def starts_with_a_vowel?(word)
  if word.scan(/^[aeiou]|[AEIOU]/) == []
    false
  else
    true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing/)
end

def words_five_letters_long(text)
  text.scan(/\b.{5}\s/).collect do |word|
    word.chomp(' ')
  end
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/\A[A-Z].*[,.;:]\z/) == []
    false
  else
    true
  end
end

def valid_phone_number?(phone)
  if phone.scan(/([-()+\s]*\d){10}/) == []
    false
  else
    true
  end
end
