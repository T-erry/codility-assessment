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

# BDD
# Feature: Count characters in a string

#   Scenario: Count the occurrences of each character in a string
#     Given a string "abracadabra"
#     When the count_chars method is called
#     Then the result should be [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

#   Scenario: Count the occurrences of each character in a string
#     Given a string "Code Wars"
#     When the count_chars method is called
#     Then the result should be [['C', 1], ['o', 1], ['d', 1], ['e', 1], [' ', 1], ['W', 1], ['a', 1], ['r', 1], ['s', 1]]

#   Scenario: Count the occurrences of each character in a string
#     Given a string "233312"
#     When the count_chars method is called
#     Then the result should be [['2', 2], ['3', 3], ['1', 1]]

#   Scenario: Count the occurrences of each character in an empty string
#     Given an empty string
#     When the count_chars method is called
#     Then the result should be an empty array

    # Pseudo
  #   count_chars(str):
  # if str is empty:
  #   return an empty list
  # else:
  #   create an empty list occurrences
  #   split the input string str into an array of characters str_array
  #   for each character item in str_array:
  #     find the first element c in occurrences where c[0] == item
  #     if c exists:
  #       increment c[1] by 1
  #     else:
  #       add a new element [item, 1] to occurrences
  #   return occurrences