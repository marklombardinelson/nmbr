# Pick a Random Number
computer_number = rand(1..100)

# Add count + 1
count = 0

# puts "CHEAT MODE: #{computer_number}"

loop do
  # Ask User For Number
  puts "Please Give Me A Number : "
  guess = gets.chomp.to_i

  count = count + 1
  # If the guess is less than number, say "Too Low"
  if guess < computer_number
    puts "Too Low"
  end

  # If the guess is more than the number, say "Too high"
  if guess > computer_number
    puts "Too High"
  end

  # If you guess the number, stop asking for number and say "You win"
  if guess == computer_number
    puts "You Win"
    break
  end

  # If the total count of all guesses is > than 5 times wrong, say "You Lose"
  if count > 5
    puts "You Lose"
    break
  end
end
