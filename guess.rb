# Generate a random number between 1 and 100 (inclusive)
secret_number = rand(1..100)

puts "Welcome to the Number Guessing Game!"
puts "I've selected a random number between 1 and 100. Try to guess it."

attempts = 0

loop do
  print "Enter your guess: "
  guess = gets.chomp.to_i
  attempts += 1

  if guess < secret_number
    puts "Too low! Try again."
  elsif guess > secret_number
    puts "Too high! Try again."
  else
    puts "Congratulations! You guessed the correct number (#{secret_number}) in #{attempts} attempts."
    break
  end
end

