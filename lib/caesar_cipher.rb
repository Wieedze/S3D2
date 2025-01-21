def caesar_cipher(string, key)
  shifted_code = []
    string.each_byte do|code|          #letter Conversion
      if code >= 97 && code <=122      #Downcase  
        base = 97
        new_position = (code - base + key) % 26 + base     #Boucle de position 
        shifted_code << new_position.chr
      elsif code >= 65 && code <=90     #Upcase 
        base = 65
        new_position = (code - base + key) % 26 + base     #Boucle de position 
        shifted_code << new_position.chr
      else 
        shifted_code << code.chr      #Special Character Conserve
      end
    end
  return shifted_code.join
end