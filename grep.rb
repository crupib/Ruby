def simple_grep(file_path, phrase)
  line_number = 0

  File.foreach(file_path) do |line|
    line_number += 1
    if line.match?(phrase)
      puts "#{line_number}: #{line}"
    end
  end
end

# Example usage:
file_path = '/Users/williamcrupi/Documents/github/ruby_code/guess.rb'
phrase_to_search = 'Welcome to the Number Guessing Game!'
simple_grep(file_path, /#{Regexp.escape(phrase_to_search)}/)

