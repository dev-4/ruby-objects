# The tower that contains the lift
class Tower
  def lift
    puts "You are on floor " + rand(12).to_s + " "
  end
end
# New lift
  my_Tower = Tower.new
  my_Tower.lift
  
  puts "What floor do you want?"
  input = gets.chomp.to_i
  # Lift can only go to 1-12
  floors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  # If and else
  if input < 1 || input > 12
    puts "The is no floor #{input}, sorry."
  else
    puts "Traveling to floor #{floors[input-1]}"
    puts "..."
    puts "..."
    puts "..."
    puts "You are on floor #{floors[input-1]}"
    puts "Thank you for using our lift, have a great day!"
  end
