def caeser_cipher(str, shift)
  result = ""
  str.each_byte do |char|
    if char.between?(65, 90) || char.between?(97, 122)
      lower = char < 91
      char += shift
      char -= 26 if lower && char > 90 || char > 122
    end
    result += char.chr
  end
  result
end

puts caeser_cipher("Hello World!", 26)
puts caeser_cipher("THE quick BROWN fox JUMPED over THE lazy DOG", 26)
