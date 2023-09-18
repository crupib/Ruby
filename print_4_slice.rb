numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # Replace this with your array

numbers.each_slice(4) do |group|
  puts group.join(' ')
end

