def substrings(str, arr_of_substrings)
    results = Hash.new(0)
    arr_of_words = str.scan(/\w+/)

    arr_of_substrings.each do |substr|
        arr_of_words.each do |word|
            results[substr] += 1 if word.match(substr)
        end
    end

    results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)