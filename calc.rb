# Calculator type
def request_calculation_type
  puts "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers: "
  operation_selection = gets.to_i

  if operation_selection == 1 
    "add"
  elsif operation_selection == 2
    "subtract"
  elsif operation_selection == 3
    "multiply"
  elsif operation_selection == 4
    "divide"
  else 
    "error"
  end

end

# This method performs the requested calculation
# It returns the result of the calculation
def calculate_answer(operator, num1, num2)
  if operator == "add"
    num1 + num2
  elsif operator == "subtract"
   num1 - num2
  elsif operator == "multiply"
    num1 * num2
  elsif operator == "divide"
    num1 / num2
  end
end

run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "Invalid input, please try again."  

  else
    puts "First number you want to #{current_calculation}: "
    first_number = gets.to_i
    puts "Second number you want to#{current_calculation}: "
    second_number = gets.to_i 

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "Your numbers equal to #{answer}"
    puts "Type 1 to calculate once more or 2 to turn me off."
    run_calculator = gets.to_i

  end
end