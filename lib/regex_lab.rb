def starts_with_a_vowel?(word)
  return true if word.match(/\A[aeiouAEIOU]/) != nil
  return false if word.match(/\A[aeiouAEIOU]/) == nil
end

def words_starting_with_un_and_ending_with_ing(text)
  old_array =  text.split(" ")
  new_array = []
  old_array.each do |word|
    if word.match(/^un.*ing$/) != nil
      new_array << word
    end
  end
  return new_array
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return true if text.match(/^[A-Z].*\./) != nil
  return false if text.match(/^[A-Z].*\./) == nil
end

def valid_phone_number?(phone)
  word = phone.gsub(/[)( -]/, "")
  return true if word.match(/[0-9]{10}/) != nil
  return false if word.match(/[0-9]{10}/) == nil
end
