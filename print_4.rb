numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # Replace this with your array

counter = 0

numbers.each do |number|
  print number.to_s + " "
  counter += 1

  if counter == 4
    puts # Print a newline after every four numbers
    counter = 0
  end
end

# Ensure a newline at the end if there are fewer than 4 elements in the array
puts if counter > 0

