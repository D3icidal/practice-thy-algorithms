def common_substrings(string_one, string_two)
  #'abcdef', 'poibcot' => 'bc'
  resultarray = []
  start_i = 0
  length = string_one.length
  length_i = length
  while length > 2
    start_i = 0
    length_i = length
    while (start_i < length)    #(start_i < string_one.length - 1)
      # puts "\nstart. start_i and length_i: #{start_i} #{length_i}. string_one(starti,lengthi): #{string_one[start_i,length_i]}"
      # p string_two.match(string_one[start_i,length_i])
      resultarray << string_two.match(string_one[start_i,length_i]).to_s
      start_i += 1
      length_i -= 1
    end
    length -= 1
    # puts "\n\n\tresultarray: #{resultarray}"
  end
  return resultarray.max_by { |x| x.length }
end

def sum_rec(numbers)
  if numbers.length < 2
    return numbers.first
  else
    numbers.delete_at(0)
    numbers.first + sum_rec(numbers)
  end
end



# =>  RUNNERS

puts sum_rec([1,2,3,4]) # => 10
puts common_substrings('dabcdef', 'dpoibdefcot')  #'abcdef', 'poibcot' => 'bc'
