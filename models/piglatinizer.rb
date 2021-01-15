class PigLatinizer

  def piglatinize(user_text)
    words = user_text.split
    swapped_words = words.map do |word|
      word.gsub(/\b[^AEIOUaeiou]+/) do |m| 
        word = word.delete_prefix(m)
        word += m
      end
      word
    end
    swapped_words.map{|w| words.include?(w) ? w += 'way' : w += 'ay'}.join(' ')
  end

end