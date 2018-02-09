def starts_with_a_vowel?(word)
  %w(a e i o u A E I O U).include?(/^[aeiou]/i.match(word).to_s)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing\b/i)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if /\A[[:upper:]].*[[:punct:]]\z/.match(text)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/.match(phone)
end
