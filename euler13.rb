require "euler_math"

numbers = []

File.open("problem13.txt") do |file|
	file.each_line { |line| numbers << line.to_i }
end

puts "The first 10 digits are: #{numbers.sum.to_s[0..9]}"