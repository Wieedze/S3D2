dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(string, dictionnary)

  string_downcase = string.downcase
  result = Hash.new(0)

  dictionnary.each do |word|
    count = string_downcase.scan(/#{word}/).size
    result[word] = count if count > 0
  end
  result
end