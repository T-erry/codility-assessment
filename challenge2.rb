def count_chars(str)
  if str.empty?
    []
  else
    str_array = str.split(//)
    occurrences = []
    str_array.each do |item|
      char_count = occurrences.find { |c| c[0] == item }
      if char_count
        char_count[1] += 1
      else
        occurrences << [item, 1]
      end
    end
    occurrences
  end
end

puts count_chars('abracadabra')
puts count_chars('Code Wars')
puts count_chars('233312')

