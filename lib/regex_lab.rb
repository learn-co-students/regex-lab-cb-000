def starts_with_a_vowel?(word)
	if word[/^[AEIOUaeiou]/]
		return true
	elsif word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKKLMNPQRSTVWXYZ]/]
		return false
	end
end

def words_starting_with_un_and_ending_with_ing(text) #stuck
	un_ing = []
	  if text.kind_of?(Array) == true
		  text.each do |word|
		    if word[/^Un/] || word[/^un/] || word[/^uN/] || word[/^UN/]
		      if word[/\w*ing\b/] || word[/\w*ING\b/] || word[/\w*iNg\b/] ||  word[/\w*Ing\b/] || word[/\w*inG\b/]
    				un_ing.push(word)
			    end
			  end
			end
			return un_ing
		end
	  if text.kind_of?(String) == true	
		if text[/^Un/] || text[/^un/] || text[/^uN/] || text[/^UN/]
		  if text[/\w*ing\b/] || text[/\w*ING\b/] || text[/\w*iNg\b/] ||  text[/\w*Ing\b/] || text[/\w*inG\b/]
			un_ing.push(text)
			return un_ing
		  end
		end 
	  end
end


text = ["Unbreaking","Texting","Unstarting","Unbolding"]
words_starting_with_un_and_ending_with_ing(text)

def words_five_letters_long(text)
	text.scan(/^\w[a-z]{5}\b/)
end

words_five_letters_long("Marks")

def first_word_capitalized_and_ends_with_punctuation?(text)

end

def valid_phone_number?(phone)

end
