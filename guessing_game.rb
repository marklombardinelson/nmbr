def right_answer right_answer
  puts "Wow! That's Awesome!"
end

def wrong_answer_low wrong_answer_low
  puts "Woah that's low... try again!"
end

def wrong_answer_high wrong_answer_high
  puts "Woah that's high... try again!"
end

# Pick a Random Number
computer_number = rand(1..100)

# Add count + 1
count = 0
guesses = []

loop do
# Ask User For Number
puts "Please Give Me A Number : "
guess = gets.chomp.to_i

count = count + 1
# If the guess is less than number, say "Too Low"
if guess < computer_number
  wrong_answer_low "Too Low"
end
# If the guess is more than the number, say "Too high"
if guess > computer_number
  wrong_answer_high "Too High"
end

# If user inputs same number twice
if guesses.include? (guess)
  puts "Lol,  you messed up!"
end

guesses << guess

# If you guess the number, stop asking for number and say "You win"
if guess == computer_number
  right_answer "You Win"
  break
end
# If the total count of all guesses is > than 5 times wrong, say "You Lose"
if count > 5
  puts "You Lose"
  break
end
end
