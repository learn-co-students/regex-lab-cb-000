def starts_with_a_vowel?(word)
  !!word.capitalize.match(/\A+[AEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  arr = []
  textArr = text.split(" ")
  textArr.each do |word|
    if(word.match(/\bun/))
      arr << word
    end
  end
  arr
end


def words_five_letters_long(text)
  reg = /\b[a-zA-Z]{5}\b/
  arr = []
  textArr = text.split(' ')
  textArr.each do |word|
    if(word.match(reg))
      arr << word
    end
  end
  arr
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/^[A-Z]/) && !!text.match(/[[:punct:]]\z/)
end

def valid_phone_number?(phone)
#input string
# remove anything that isn't number
match = phone.scan(/\d/)
# then count digits
if match.length == 7 || match.length == 10
  true
else
  false
end
end
