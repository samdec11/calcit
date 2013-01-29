puts "What would you like to do? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit."
input = gets.chomp

case
when input = "1"
  print "Would you like to add, subtract, multiply, or divide?"
when input = "2"
  print "Would you like to "
when input = "Q"
end

def power(base, exponent)
  base ** exponent
end

def square_root(number)
  number ** 0.5
end

