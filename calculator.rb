# calculator.irb

require 'pry'

def say(msg)
  puts "=> #{msg}"
end

def check_number(number)
  until number.to_f.to_s == number || number.to_i.to_s == number
    say "Please enter a valid number!"
      number = gets.chomp
  end
  return number.to_f.to_s == number ? number.to_f : number.to_i
end

say "What's the first number"

num1 = check_number(gets.chomp)

say "What's the second number?"

num2 = check_number(gets.chomp)

say "1) add 2) subtract 3) multiply 4) divide"

operator = gets.chomp

until [1,2,3,4].include?(operator.to_i)
  say "Please choose from: 1) add 2) subtract 3) multiply 4) divide"
  operator = gets.chomp
end


result = case operator
  when '1'
    num1 + num2
  when '2'
    num1 - num2
  when '3'
    num1 * num2
  else
    begin
      num1 / num2
    rescue ZeroDivisionError => e
      0
    end
  end


say "Result is #{result}"
