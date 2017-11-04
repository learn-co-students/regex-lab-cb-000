# The scan method returns an array of all items in your string that match a given Regular Expression
# The match method returns the first item in your string that matches a given Regular Expression as a MatchData object
# Grep is a method for pattern searching in arrays and hashes. Similar to scan, grep will return an array of matching items from an array.


# returns true for words starting with a vowel
# returns false for words starting with a consonant
def starts_with_a_vowel?(word)
  # if the word matches, return true; else return false (match method)
  # check start of line: ^
  # find any character that is a lowercase or uppercase vowel: [aeiouAEIOU]
  # match the word that has the vowel character: \w+
  word.match(/^[aeiouAEIOU]\w+/) ? true : false
end

# returns an array with the words starting with 'un' and ending with 'ing'
def words_starting_with_un_and_ending_with_ing(text)
  # return an array (scan method)
  # find "un" string: un
  # match the word that has "un" string: \w+
  # find "ing" string at the end of the word (\b is a word boundary): ing\b
  text.scan(/un\w+ing\b/)
end

# returns an array of words that are five letters long
def words_five_letters_long(text)
  # return an array (scan method)
  # to find exactly 5 letters long, use boundaries
  # beginning boundary: \b
  # find words containing 5 characters: \w{5}
  # ending boundary; no letters follow after the 5 characters: \b
  text.scan(/\b\w{5}\b/)
end

# Returns true for text starting with a capital letter and ending with puncutation
# Returns false for text starting with an uncapitalized letter but ending with puncutation
# Returns false for text starting with a capital letter but ending without puncutation
# Returns false for text starting without a capital letter and ending without puncutation
def first_word_capitalized_and_ends_with_punctuation?(text)
  # if the word matches, return true; else return false (match method)
  # start with a capital letter: ^[A-Z]
  # any character: .+
  # find punctuation characters: [\.!?]
  # end of line: $
  text.match(/^[A-Z].+[\.!?]$/) ? true : false
end

# returns true for valid phone numbers, regardless of formatting
def valid_phone_number?(phone)
  phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
end

# Regex Boundaries
  # outer boundaries of a word: \b
  # inner boundaries of a word: \B
  # first letter of every word: \b\w
  # last letter of every word: \w\b

# https://www.regular-expressions.info/refwordboundaries.html

=begin
https://www.ruby-forum.com/topic/181455

Q: Why do I need \b in regular expression?

A: Think of \b as the boundary of the words in a string.

  \B has the opposite effect, affecting all letter/character boundaries instead of whole words.

  string = "foo bar"
  if you gsub this using \b, it will look like this:

  string.gsub(/\b/,"-") #=> -foo- -bar-

  As you can tell, it has added a "-" to only the boundaries (edges) of each word.

  using \B will output this #=> f-o-o b-a-r

  These are the inside boundaries of each word instead of the outside boundaries.
=end
