class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words_array)
    anagram_matches = []
    words_array.each do |ana_word|
      split_word = ana_word.split("")
      split_original_word = @word.split("")
      if split_word.sort == split_original_word.sort
        anagram_matches << ana_word
      end
    end
    anagram_matches
  end

end
