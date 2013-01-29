require 'rainbow'

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
  number1/number2.to_f
end

puts "What would you like to do? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit. "
input = gets.chomp
while input != "Q".downcase
  case input
  when "1"
    print "Enter your first number. ".color(:blue)
    number1 = gets.chomp.to_i
    print "Enter your second number. ".color(:blue)
    number2 = gets.chomp.to_i
    print "What would you like to do with these numbers? Enter add, subtract, multiply, or divide. ".color(:blue)
    enter = gets.chomp
    case enter
      when "add"
        x = addition(number1, number2)
        puts "The sum of these numbers is #{x}.".color(:blue)
      when "subtract"
        x = subtraction(number1, number2)
        puts "The difference of these numbers is #{x}.".color(:blue)
      when "multiply"
        x = multiplication(number1, number2)
        puts "The product of these numbers is #{x}.".color(:blue)
      when "divide"
        x = division(number1, number2)
        puts "The quotient of these numbers is #{x}.".color(:blue)
    end
  puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit. "
    input = gets.chomp
  when "2"
    print "Enter your first number. ".color(:green)
    number1 = gets.chomp.to_i
    print "Enter your second number (enter 0 if performing square root function). ".color(:green)
    number2 = gets.chomp.to_i
    print "Would you like to raise a number to a power or find the square root of a number? Type power or root ".color(:green)
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
puts "You have quit the application.".color(:red)
