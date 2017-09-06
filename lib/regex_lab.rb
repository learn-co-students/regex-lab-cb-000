def starts_with_a_vowel?(word)
  !!(word.match(/^[AEIOUaeiou]/))
end

def words_starting_with_un_and_ending_with_ing(text)
  # text.scan(/^un.*ing$/)
  #  text.scan(/^un.*ing$/)
  #  text.scan(/^un.*/)
  #  text.scan(/un[a-zA-Z*]ing/)
  #  text.scan(/un[a-zA-Z*]/)
   text.scan(/un[a-zA-Z*]{0,100}ing/)
end


def words_five_letters_long(text)
  # text.scan(/[a-zA-Z]{5}/)
  # puts text
  # text.scan(/^\w{5}\s/)
  text.scan(/\b\w{5}\b/)
end


def first_word_capitalized_and_ends_with_punctuation?(text)
  # !!(text.scan(/^[A-Z]\w*\?$/))
  # puts "****************************#{text}*****************"
  # puts (text.scan(/^[A-Z].*\.$/))
  # puts !!(text.scan(/^[A-Z].*\.$/).length > 0)
  !!(text.scan(/^[A-Z].*\.$/).length > 0)
end
# words = "I stepped on a Corn Flake, now I'm a cereal killer."
# words2 ="i wondered why the baseball was getting bigger. Then it hit me."
# first_word_capitalized_and_ends_with_punctuation?(words)
# first_word_capitalized_and_ends_with_punctuation?(words2)
# words="uncooling , coola becoolio coolb unburping"
# # puts words_starting_with_un_and_ending_with_ing(words)
# puts words_five_letters_long(words)



def valid_phone_number?(phone)
  puts "************************#{phone}*********************"
  # phone.scan(/[0-9 _.,!"'\$]*/)
  # !!(phone.scan(/[0-9 _.,!"'\$]*/))
  phone = phone.tr("()","").tr("-","").tr(" ","")
  # puts "#{phone}"
  # puts !!(phone.scan(/A[0-9\$]{10}/))
  puts !!(phone.match(/[0-9]{10}/))
  !!(phone.match(/[0-9]{10}/))
end
phone = "28894546"
phone1 ="(800)4261134"
phone2="(800)IloveNY"
puts valid_phone_number?(phone)
puts valid_phone_number?(phone1)
puts valid_phone_number?(phone2)
