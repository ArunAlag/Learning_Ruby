DICTIONARY = [
    "below","down","go","going","horn",
    "how","howdy","it","i","low",
    "own","part","partner","sit"
]

def substring(phrase, dictionary)
    phrase.downcase!
    # Split the string with whitespaces => No () means whitespaces
    str_to_arr = phrase.split
    # Store filtered result
    matches = []
    # Store the frequency
    frequency = {}

    dictionary.each do |word|
         if str_to_arr.any? { |element| element.include?(word)}
           matches.push(word)
         end
    end

    matches.each do |word|
        frequency[word] = str_to_arr.count { |element| element.include?(word) }
    end

    frequency
end

result = substring("Howdy partner, sit down! How's it going?", DICTIONARY)
puts result