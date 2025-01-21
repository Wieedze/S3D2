def day_trader(price_array)
  
  # indice du prix maximum, mais ne peut pas être le premier
  
  index_max = price_array[1..-1].find_index(price_array[1..-1].max) + 1 

  # indice minimum qui précède l'indice maximum
  
  index_min = price_array[0...index_max].find_index(price_array[0...index_max].min)

  [index_min,index_max]

end 
