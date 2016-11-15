# Pick a Random Number
computer_number = rand(1..100)

# Add count + 1
count = 0

# Ask User For Number
puts "Please Give Me A Number : "
guess = gets.chomp.to_i

count = count + 1
# If the guess is less than number, say "Too Low"
if guess < computer_number
  puts "Too Low"
end
