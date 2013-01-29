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

def mortgage(prince, inter, payments)
    prince*((inter*(1+inter)**payments)/(( 1+inter)**n)-1)
end

def BMI(height_in_inches, weight)
  (703 * weight) / (height_in_inches ** 2)
end

puts "What would you like to do? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press 4 to calculate your monthly mortgage payments Press Q to quit."

input = gets.chomp
while input != "Q".downcase
  case input
  when "1"
    print "Enter your first number. "
    number1 = gets.chomp.to_i
    print "Enter your second number. "
    number2 = gets.chomp.to_i
    print "What would you like to do with these numbers? Enter add, subtract, multiply, or divide. "
    enter = gets.chomp
    case enter
      when "add"
        x = addition(number1, number2)
        puts "The sum of these numbers is #{x}."
      when "subtract"
        x = subtraction(number1, number2)
        puts "The difference of these numbers is #{x}."
      when "multiply"
        x = multiplication(number1, number2)
        puts "The product of these numbers is #{x}."
      when "divide"
        x = division(number1, number2)
        puts "The quotient of these numbers is #{x}."
    end
    puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations. Press Q to quit. "

    input = gets.chomp
  end
  end
when "2"
    print "Enter your first number. "
    number1 = gets.chomp.to_i
    print "Enter your second number (enter 0 if performing square root function). "
    number2 = gets.chomp.to_i
    print "Would you like to raise a number to a power or find the square root of a number? Type power or root "
    enter = gets.chomp
    case enter
      when "power"
        puts power(number1, number2).to_s
      when "root"
        puts square_root(number1).to_s
    end

  puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press Q to quit. "
  input = gets.chomp

  when "3"
    print "Enter your height in inches "
    height = gets.chomp.to_i
    print "Enter your weight in pounds "
    weight = gets.chomp.to_i
    puts BMI(height, weight).to_s
    puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press Q to quit. "
    input = gets.chomp
end
  when "4"
    print "Enter principal"
    principal = gets.chomp.to_i
    print "Enter number of payments"
    payments = gets.chomp.to_i
    print "Enter interest"
    inter = gets.chomp.to_i
    puts mortgage(prince, inter, payments).to_s
    puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press Q to quit. "
    input = gets.chomp
end
end
puts "You have quit the application."
