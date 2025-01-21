def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0
end


def sum_of_3_or_5_multiples(final_number)
  sum = 0
  (0...final_number).each do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end