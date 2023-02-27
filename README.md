# No ifs no buts(Toy Problem)
 ## Pseudo
function compare_numbers(a, b):
    result <- ''
     comparison <- a <=> b
  if comparison = 1:
        result <- a.floor + ' is greater than ' + b.floor
     else if comparison = -1:
         result <- a.floor + ' is less than ' + b.floor
     else:
         result <- a.floor + ' is equal to ' + b.floor
    return result
    end


## BDD (Behavior Driven Development)
    Feature: Compare Numbers
     As a programmer
     I want to compare two numbers
     So that I can determine their relationship
  
     Scenario: a is greater than b
       Given a = 5.4 and b = 4
       When I call compare_numbers(a, b)
       Then it should return "5 is greater than 4"
  
     Scenario: a is less than b
      Given a = -4.7 and b = -3
       When I call compare_numbers(a, b)
       Then it should return "-4 is less than -3"
  
     Scenario: a is equal to b
       Given a = 2.2 and b = 2.2
       When I call compare_numbers(a, b)
       Then it should return "2 is equal to 2"

  # Ordered Count of Characters(Toy Problem)
  ## BDD
 Feature: Count characters in a string

  Scenario: Count the occurrences of each character in a string
    Given a string "abracadabra"
    When the count_chars method is called
     Then the result should be [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

  Scenario: Count the occurrences of each character in a string
    Given a string "Code Wars"
    When the count_chars method is called
    Then the result should be [['C', 1], ['o', 1], ['d', 1], ['e', 1], [' ', 1], ['W', 1], ['a', 1], ['r', 1], ['s', 1]]

  Scenario: Count the occurrences of each character in a string
     Given a string "233312"
     When the count_chars method is called
     Then the result should be [['2', 2], ['3', 3], ['1', 1]]

  Scenario: Count the occurrences of each character in an empty string
     Given an empty string
     When the count_chars method is called
    Then the result should be an empty array

 ## Pseudo

    count_chars(str):
   if str is empty:
     return an empty list
   else:
    create an empty list occurrences
     split the input string str into an array of characters str_array
     for each character item in str_array:
       find the first element c in occurrences where c[0] == item
       if c exists:
         increment c[1] by 1
      else:
       add a new element [item, 1] to occurrences
        return occurrences