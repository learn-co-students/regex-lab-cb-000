def starts_with_a_vowel?(word)
  if word.match(/\b[aeiouAEIOU]\w+/)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing/)

end

def words_five_letters_long(text)
  text.scan(/\b(\w{5,5})\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].*[!?.]$/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/^^\([1-9]\d{2}\)\d{3}-\d{4}/) #(718)891-1313
    true
  elsif phone.match(/^\([1-9]\d{2}\)\d{7}/) #(800)4261134
    true
  elsif phone.match(/^[1-9]\d{2} \d{3} \d{4}/) #234 435 9978
    true
  elsif phone.match(/\d{10}/) #234 435 9978
    true
  else
    false
  end
end
