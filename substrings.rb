def substrings(string, dictionary)
  delimiters = [",", ".", " ", "'", "!", "?"]
  # convert string to an array of words in case there are multiple words, removing punctuation
  array = string.downcase.split(Regexp.union(delimiters))
  # initialize hash
  word_hash = {}
  # check if the word is included in the dictionary
  for item in array do
    if dictionary.include? item
      # if the word is included in the dictionary, add it to the hash
      word_hash[item]
      word_counter = 0
      # if it is included, check how often and add total to hash
      for word in dictionary do
        if word == item
          word_counter += 1
        end
        word_hash[item] = word_counter
      end
    end
  end

  # display message if no words are matches with the dictionary
  if word_hash == {}
    puts "That does not show up in the dictionary."
  else
    # display the found matches in hash format
    p word_hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)