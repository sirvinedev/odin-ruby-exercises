dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, words)
  string.downcase!
  result = {}
  words.each do |word| 
    scan_length = string.scan(word.downcase).length
    result[word] = scan_length if scan_length > 0
  end
  result
end

puts sub_strings("Hello World", ["Hello", "World"])
puts sub_strings("This is a test", ["i", "TEST", "THE", "big", "Is"])
puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)