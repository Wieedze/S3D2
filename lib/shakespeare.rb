file_path = File.join(File.dirname(__FILE__), 'shakespeare_integral.txt')

dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def word_counter(dictionary, file_path)
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

  end

  result
end

# Appeler la méthode et afficher les résultats
result = word_counter(dictionary, file_path)
puts "Word counts: #{result}"