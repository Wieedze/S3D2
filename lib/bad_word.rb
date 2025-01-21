file_path = File.join(File.dirname(__FILE__), 'shakespeare_integral.txt')
dictionary_path = File.join(File.dirname(__FILE__), 'bad_word.txt')

def word_counter(dictionary_path, file_path)
  # Read the dictionary  and convert it to an array of words
  dictionary = File.read(dictionary_path).split

  content = File.read(file_path)
  content_downcase = content.downcase

  # Remove punctuation and special characters
  content_cleaned = content_downcase.gsub(/[^a-z\s-]/i, '')

  # Normalize whitespace
  content_normalized = content_cleaned.gsub(/\s+/, ' ')

  result = Hash.new(0)

  dictionary.each do |word|
    count = content_normalized.scan(/\b#{Regexp.escape(word)}\b/).count
    result[word] = count
    puts "Word: #{word}, Count: #{count}"  # Instruction de débogage
  end

  result
end

# Appeler la méthode et afficher les résultats
result = word_counter(dictionary_path, file_path)
puts "Word counts: #{result}"