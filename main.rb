def power(base, exponent)
  base ** exponent
end

def square_root(number)
  number ** 0.5
end

def addition(number1, number2)
  number1 + number2
end

def subtraction(number1, number2)
  number1 - number2
end

def multiplication(number1, number2)
  number1*number2
end

def division(number1, number2)
  number1/number2
end

puts "What would you like to do? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit."
input = gets.chomp
while input != "Q"
case input
when "1"
  print "Enter your first number."
  number1 = gets.chomp.to_i
  print "Enter your second number."
  number2 = gets.chomp.to_i
  print "What would you like to do with these numbers? Enter add, subtract, multiply, or divide."
  case enter
  when "add"
    addition(number1, number2)
  when "subtract"
    subtract(number1, number2)
  when "multiply"
    multiply(number1, number2)
  when "divide"
    division(number1, number2)
  end
puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit."
when "2"
  print "Would you like to raise a number to a power or find the square root of a number? Type power or root."
end
puts "You have quit the application."