total = 0
index = 1
while index < 1000
	if (index % 3 == 0 or index % 5 == 0)
		total += index
	end
	index += 1
end
puts total