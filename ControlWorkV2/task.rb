def word_count(text)
  words = text.downcase.split(" ")
  counts = {}
  words.each do |word|
    if counts.key?(word)
      counts[word] += 1
    else
      counts[word] = 1
    end
  end
  counts
end

# puts word_count("The quick brown fox jumps over the lazy dog. The quick red squirrel jumps over the lazy pig")
# {"The"=>2, "quick"=>2, "brown"=>1, "fox"=>1, "jumps"=>2, "over"=>2, "the"=>2, "lazy"=>2, "dog."=>1, "red"=>1, "squirrel"=>1, "pig"=>1}

# puts word_count("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur adipiscing elit duis tristique sollicitudin nibh sit")
# {"lorem"=>1, "ipsum"=>1, "dolor"=>1, "sit"=>2, "amet,"=>1, "consectetur"=>2, "adipiscing"=>2, "elit,"=>1, "sed"=>1, "do"=>1, "eiusmod"=>1, "tempor"=>1, "incididunt"=>1, "ut"=>1, "labore"=>1, "et"=>1, "dolore"=>1, "magna"=>1, "aliqua."=>1, "elit"=>1, "duis"=>1, "tristique"=>1, "sollicitudin"=>1, "nibh"=>1}
