def starts_with_a_vowel?(word)
  puts word[0]
  puts word.match(/[aeiou]/)
  if word.match(/^[aeiou]/)
    true
  else
    false
  end
end


puts starts_with_a_vowel?("david")
puts starts_with_a_vowel?("animal")
puts starts_with_a_vowel?("egg")

def valid_phone_number(phone)
  text.match(/(\d{3}).(\d{3}).(\d{4})|(\d{3})(\d{3}).(\d{4})|(\d{3}).(\d{3})(\d{4})|(\d{3})(\d{3})(\d{4})/)
end

valid_phone_number("718-683-8295")
