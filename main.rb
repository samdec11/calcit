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
    print "Enter your first number. "
    number1 = gets.chomp.to_i
    print "Enter your second number (ignore if doing a square root). "
    number2 = gets.chomp.to_i
    print "What would you like to do with these numbers? Enter add, subtract, multiply, or divide. "
    enter = gets.chomp
    case enter
      when "add"
        puts addition(number1, number2).to_s
      when "subtract"
        puts subtract(number1, number2).to_s
      when "multiply"
        puts multiply(number1, number2).to_s
      when "divide"
        puts division(number1, number2).to_s
    end
  puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit. "
    input = gets.chomp
  when "2"
    print "Enter your first number. "
    number1 = gets.chomp.to_i
    print "Enter your second number (ignore if doing a square root). "
    number2 = gets.chomp.to_i
    print "Would you like to raise a number to a power or find the square root of a number? Type power or root "
    enter = gets.chomp
    case enter
      when "power"
        puts power(number1, number2).to_s
      when "root"
        puts square_root(number1).to_s
    end
  puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit. "
  input = gets.chomp
end
end
puts "You have quit the application."

