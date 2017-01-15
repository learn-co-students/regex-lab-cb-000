require 'pry'
def starts_with_a_vowel?(word)

  #/i ignore capilization, scan returns array so we have to compare .length if we got any matches
  #match beginning with [vowels] followed by any # of words, ignoreing case
  word.match(/^[aeiou]\w+/i) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  #match un then 1 or more words then ing
  #added in \b cause of next example
  text.scan(/un\w+ing\b/)
end

def words_five_letters_long(text)
  #doing just \w{5} gives us all correct 5 words but includes the beginngin 5 letters of extreme !!! :(
  #after much seraching you have to use \b for it to be bound to word boundry
  #you also have to do \b on both sides of word for it to work correctly
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  #only first word so have to use ^[A-Z] for capitals
  # then .+ for any character not newline and 1+ of them
  #then test for puncutation [\.?!] at the end so $

  text.match(/^[A-Z].+[\.?!]$/) ? true : false
end

def valid_phone_number?(phone)
  # match \d 0 or more times but its optional but must be 10 digits OR
  # optaionl ( 3digits optional )
  # 3digits followed by -
  # 4 digits OR
  # 7digit number

  #after much searching the internet and much frustration, its almsot pointless to validate phonenumbers in this
  #way because it varies not only in length or formatting, but that also varies by country
  #not to mention you can have the +1 for internation calls or extentions ext1234
  #its a really big mess and you shouldn't use this for critical parts of your programs
  #you should ideally strip out all non digit numbers and just validate based on length range depending on country

  phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
end
