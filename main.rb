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
    prince*((inter*(1+inter)**payments)/((1+inter)**payments)-1)
end

def BMI(height_in_inches, weight)
  (703 * weight) / (height_in_inches ** 2)
end

def calculate_trip(distance, mpg, fuel_efficiency, speed)
  if speed > 60
    mpg -= (2 * (speed - 60))
  end
  puts "Your trip will take #{distance / speed} hours and will cost $#{(distance / mpg) * fuel_efficiency}".color("#FFA500")
end

def promptphrase
puts "What would you like to do? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press 4 to calculate your monthly mortgage payments. Press 5 for a trip calculator. Press Q to quit."
  end

promptphrase
input = gets.chomp.downcase
while input != "q"
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
promptphrase
input = gets.chomp.downcase

  when "2"
    print "Enter your first number. ".color(:green)

    number1 = gets.chomp.to_i
    print "Enter your second number (enter 0 if performing square root function). ".color(:green)
    number2 = gets.chomp.to_i
    print "Would you like to raise a number to a power or find the square root of a number? Type power or root ".color(:green)
    enter = gets.chomp
    case enter
      when "power"
        puts power(number1, number2).to_s.color(:green)
      when "root"
        puts square_root(number1).to_s.color(:green)
    end

promptphrase
input = gets.chomp.downcase

  when "3"
    print "Enter your height in inches ".color("#483D8B")
    height = gets.chomp.to_i
    print "Enter your weight in pounds ".color("#483D8B")
    weight = gets.chomp.to_i
    puts BMI(height, weight).to_s.color("#483D8B")
    puts "What would you like to do next? Press 1 for basic calculations. Press 2 for advanced calculations.  Press 3 to calculate BMI. Press Q to quit. "
    input = gets.chomp

  when "4"
    print "Enter principal: ".color("#FFB6C1")
    prince = gets.chomp.to_i
    print "Enter number of payments: ".color("#FFB6C1")
    payments = gets.chomp.to_i
    print "Enter interest: ".color("#FFB6C1")
    inter = gets.chomp.to_i
    puts mortgage(prince, inter, payments).to_s.color("#FFB6C1")
promptphrase
input = gets.chomp.downcase

  when "5"
    print "How far are you driving? ".color("#FFA500")
    distance = gets.chomp.to_i
    print "What is your MPG? ".color("#FFA500")
    mpg = gets.chomp.to_i
    print "How much does gas cost per gallon? ".color("#FFA500")
    fuel_efficiency = gets.chomp.to_i
    print "How fast will you drive? ".color("#FFA500")
    speed = gets.chomp.to_i

    puts calculate_trip(distance, mpg, fuel_efficiency, speed).to_s

promptphrase
input = gets.chomp.downcase

  else
    puts "choose an appropriate option (1-5 or Q)"

promptphrase
input = gets.chomp.downcase

end
end
puts "You have quit the application.".color(:red)
