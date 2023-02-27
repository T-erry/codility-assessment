

def compare_numbers(a, b)
    case (a <=> b)
    when 1
     puts  "#{a.floor} is greater than #{b.floor}"
    when -1
     puts "#{a.floor} is less than #{b.floor}"
    when 0
    puts   "#{a.floor} is equal to #{b.floor}"
    end
  end
  
  compare_numbers(5, 4)
  compare_numbers(-4, -7)  
  compare_numbers(2,2)  



# Pseudo

# function compare_numbers(a, b):
#     result <- ''
#     comparison <- a <=> b
#     if comparison = 1:
#         result <- a.floor + ' is greater than ' + b.floor
#     else if comparison = -1:
#         result <- a.floor + ' is less than ' + b.floor
#     else:
#         result <- a.floor + ' is equal to ' + b.floor
#     return result
#     end


# BDD (Behavior Driven Development)
    # // Feature: Compare Numbers
    # // As a programmer
    # // I want to compare two numbers
    # // So that I can determine their relationship
  
    # // Scenario: a is greater than b
    # //   Given a = 5.4 and b = 4
    # //   When I call compare_numbers(a, b)
    # //   Then it should return "5 is greater than 4"
  
    # // Scenario: a is less than b
    # //   Given a = -4.7 and b = -3
    # //   When I call compare_numbers(a, b)
    # //   Then it should return "-4 is less than -3"
  
    # // Scenario: a is equal to b
    # //   Given a = 2.2 and b = 2.2
    # //   When I call compare_numbers(a, b)
    # //   Then it should return "2 is equal to 2"