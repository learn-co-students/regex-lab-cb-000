def starts_with_a_vowel?(word)
  %w(a e i o u).include?(word[0].downcase)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split(" ").grep(/^un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !text.scan(/^[A-Z].*\W$/).empty?
end

def valid_phone_number?(phone)
  !phone.scan(/^\d{10}|^\(\d{3}\)\d{3}-\d{4}|^\(\d{3}\)\d{7}|^\d{3}\s\d{3}\s\d{4}/).empty?
end
