def starts_with_a_vowel?(word)
  a = word.upcase.scan(/\b[AEIOU]\w*\b/)
  letters = word.split("")
  if a !=[]
    return true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  array = []
  array = text.scan(/\bun\w*\ing\b/)
  array
end

def words_five_letters_long(text)
  array=[]
  array = text.scan(/\b\w{5}\b/)
  array
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  sentence = text.match(/\A[A-Z].*\./)
  if sentence != nil
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  number = phone.scan(/\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*\d\D*/)
  if number != []
    true
  else
    false
  end
end
