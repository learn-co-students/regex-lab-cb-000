def starts_with_a_vowel?(word)
  return true if word[0].match(/[aeiouAEIOU]/)
  false

end

def words_starting_with_un_and_ending_with_ing(text)
text.scan(/un+\w+ing/)


end

def words_five_letters_long(text)

  text.split(" ").grep(/^\w{5}$/)

end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return true if text[0].match(/[A-Z]/) && text[-1].match(/[.,?!:;]/)
  false
end

def valid_phone_number?(phone)
  return true if phone.scan(/\d/).join("").match(/\d{10}/)
  false

end
