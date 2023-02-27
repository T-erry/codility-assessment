

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



