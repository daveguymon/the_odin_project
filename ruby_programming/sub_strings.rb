 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

 def substrings(phrase, dictionary)
  frequencies = Hash.new(0)
  all_substrings = []
  common_substrings = []

  phrases_to_lower_case = phrase.gsub(/'/,'').downcase
  target_words = phrases_to_lower_case.gsub(/\W/, ' ').split(" ")
  
  target_words.each do |word|
    (0...word.length).each do |i|
      (i...word.length).each do |j|
        all_substrings << word[i..j]
      end
    end
  end

  all_substrings.each do |substring|
    if dictionary.include?(substring)
      common_substrings << substring
    end
  end

  common_substrings.each { |word| frequencies[word] += 1 }
  
  frequencies
 end
