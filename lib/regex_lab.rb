require 'pry'

def starts_with_a_vowel?(word)
  if word.scan(/^[aeiouAEIOU]/)[0] != nil
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  # array_form = text.split(" ")
  # array_form.collect {|word| word.scan(/^un.*ing$/)}
  text.scan(/un[a-zA-Z]*ing/)
end

def words_five_letters_long(text)
  # text.split(" ").collect {|word| word.scan(/\b[A-Za-z]{5}\b/)}
  text.scan(/\b[A-Za-z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z]/) != nil && text.match(/[.?!]$/) != nil
    true
  else
    false
  end
end

# def valid_phone_number?(phone)
#  solution_array = []
#  phone.each {|value|
#    if value.match(/[0-9]{9}/) != nil
#      solution_array << true
#    elsif value.match(/[\(][0-9]{3}[\)][0-9]{7}/) != nil
#      solution_array << true
#    elsif value.match(/[\(][0-9]{3}[\)][0-9]{3}[.\s-][0-9]{4}$/) != nil
#      solution_array << true
#    else
#      solution_array << false
#    end}
#  if solution_array.all? == true
#    true
#  else
#    false
#  end
#end

def valid_phone_number?(phone)
  if phone.match(/[0-9]{9}/) != nil
    true
  elsif phone.match(/[\(][0-9]{3}[\)][0-9]{7}/) != nil
    true
  elsif phone.match(/[\(][0-9]{3}[\)][0-9]{3}[.\s-][0-9]{4}$/) != nil
    true
  elsif phone.match(/[\(][0-9]{3}[\)][0-9]{7}$/) != nil
    true
  elsif phone.match(/^[0-9]{3}\s[0-9]{3}\s[0-9]{4}$/)
    true
  else
    false
  end
end

# puts words_starting_with_un_and_ending_with_ing("unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary")
# puts words_five_letters_long("extreme briny crepe parking snaps grouping snafu round dog be fork spoon")
# puts first_word_capitalized_and_ends_with_punctuation?("I stepped on a Corn Flake, now I'm a cereal killer.")
