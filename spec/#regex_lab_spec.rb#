require 'spec_helper'

describe "Working with Regular expressions" do
  describe "#starts_with_a_vowel?" do
    it "returns true for words starting with a vowel" do
      match = %w{ afoot Excellent incredible Absolute unreal Inconceivable octopus }

      match.each do |word|
        expect(starts_with_a_vowel?(word)).to be(true)
      end
    end

    it "returns false for words starting with a consonant" do
      do_not_match = %w{ chandoo Crenel crooked Flimsy folksy Dog Hermit
     makeshift Palazzi sixfold Truth }

      do_not_match.each do |word|
        expect(starts_with_a_vowel?(word)).to be(false)
      end
    end
  end

  describe "#words_starting_with_un_and_ending_with_ing" do
    it "returns an array with the words starting with 'un' and ending with 'ing'" do
      words_string = "unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary"
      
      expect(words_starting_with_un_and_ending_with_ing(words_string).count).to eq(4)
      expect(words_starting_with_un_and_ending_with_ing(words_string)).to include("understanding")
      expect(words_starting_with_un_and_ending_with_ing(words_string)).not_to include("pomp")
    end
  end

  describe "#words_five_letters_long" do
    it "returns an array of words that are five letters long" do
      words_string = "extreme briny crepe parking snaps grouping snafu round dog be fork spoon"
      expect(words_five_letters_long(words_string).count).to eq(6)
      expect(words_five_letters_long(words_string)).to include("snafu")
      expect(words_five_letters_long(words_string)).not_to include("fork")
    end
  end

  describe "#first_word_capitalized_and_ends_with_punctuation?" do
    it "Returns true for text starting with a capital letter and ending with puncutation" do
      correct_punctuation = "I stepped on a Corn Flake, now I'm a cereal killer."
      expect(first_word_capitalized_and_ends_with_punctuation?(correct_punctuation)).to eq(true)
    end
    it "Returns false for text starting with an uncapitalized letter but ending with puncutation" do
      incorrect_punctuation = "i wondered why the baseball was getting bigger. Then it hit me."
      expect(first_word_capitalized_and_ends_with_punctuation?(incorrect_punctuation)).to eq(false)
    end

    it "Returns false for text starting with a capital letter but ending without puncutation" do
      incorrect_punctuation = "Did you hear about the guy whose whole left side was cut off? He's all right now"
      expect(first_word_capitalized_and_ends_with_punctuation?(incorrect_punctuation)).to eq(false)
    end
    it "Returns false for text starting without a capital letter and ending without puncutation" do
      incorrect_punctuation = "when fish are in schools, they sometimes take debate
"
      expect(first_word_capitalized_and_ends_with_punctuation?(incorrect_punctuation)).to eq(false)
    end
  end

  describe "#valid_phone_number?" do
    it "returns true for valid phone numbers, regardless of formatting" do
      valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
      expect(valid_numbers.all? { |number| valid_phone_number?(number) }).to be(true)
    end

    it "returns false for invalid phone numbers, regardless of formatting" do
      valid_numbers = ["28894546", "(718)891-13135", "234 43 9978", "(800)IloveNY"]
      expect(valid_numbers.all? { |number| valid_phone_number?(number) }).to be(false)
    end
  end


end
