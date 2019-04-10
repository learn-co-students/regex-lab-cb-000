def starts_with_a_vowel?(word)
  a = word.match((/^[aeiou]/i))
  a.nil? ? false : true
end


def words_starting_with_un_and_ending_with_ing(string)
  a = []
  string.split.each do |item|
    if item.match(/^un|ing/)
      a << item
    end
  end
  a
end


def words_five_letters_long(text)
  words = []
  text.split.each do |item|
    if item.match(/^[a-zA-Z]{5}$/)
    words << item
    end
   end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  compare = text.split
  words = compare.grep(/^[A-Z]/)

  if words[0] == compare[0] && compare[-1].match(/[[:punct:]]$/)
    true
      else
    false



  end
end

def valid_phone_number?(phone)
  if phone.scan(/[0-9]/).length == 10
    true
  else
    false
  end
end
