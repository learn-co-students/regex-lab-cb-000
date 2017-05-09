def starts_with_a_vowel?(word)
  !word.match(/\A[aeiou]/i).nil?
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split(" ").grep(/\Aun.*ing\z/i)
end

def words_five_letters_long(text)
  text.split(" ").grep(/\A\w{5}\z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !text.match(/\A[A-Z].*\p{P}\z/).nil?
end

def valid_phone_number?(phone)
  !phone.match(/\A(\(?\d{3}\)?(-|\s)?\d{3}(-|\s)?\d{4})\z/).nil?
end
