def starts_with_a_vowel?(word)
  !(word =~ /\A[aeiou]/i).nil?
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b+un\S+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  array = text.scan(/\b[A-Z]\w{1,}\b[,.!;:'"()]\W/)
  if array.length != 0
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  array = phone.scan(/^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/)
  if array.length != 0
    true
  else
    false
  end
end
