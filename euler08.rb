numbers = []

File.open("problem08.txt") do |file|
	file.each_char { |char| numbers << char.to_i }
end

max = 0
start_index = 0
stop_index = 4

while stop_index < numbers.length
	new_max = 1
	numbers[start_index..stop_index].each do |n|
		new_max *= n
	end
	max = new_max if max < new_max
	start_index += 1
	stop_index += 1
end

puts "Max product is: #{max}"
