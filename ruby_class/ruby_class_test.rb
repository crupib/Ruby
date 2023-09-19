
class ActsAsCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(',')

    file.each do |row|
      @result << row.chomp.split(',')
    end
  end

  def headers
    @headers
  end

  def csv_contents
    @result
  end

  def initialize
    @result = []
    read
  end
end

class RubyCsv < ActsAsCsv
end

class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self.size == 0
  end
end
class Numeric
  def inches
    self
  end

  def feet
    self * 12.inches
  end

  def yards
    self * 3.feet
  end

  def miles
    self * 5280.feet
  end

  def back
    self * -1
  end

  def forward
    self
  end
end
class Roman
  def self.method_missing name, *args
    roman = name.to_s
    roman.gsub!("IV", "IIII")
    roman.gsub!("IX", "VIIII")
    roman.gsub!("XL", "XXXX")
    roman.gsub!("XC", "LXXXX")

    (roman.count("I") +
      roman.count("V") * 5 +
      roman.count("X") * 10 +
      roman.count("L") * 50 +
      roman.count("C") * 100)
  end
end

puts "inch conversion"
puts 10.miles.back
puts 2.feet.forward
puts "Roman numerals"
puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.XL
puts "csv file"
m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
puts "Person data base"
["", "person", nil].each do |element|
  puts element unless element.blank?
end

