require "euler_math"

m = 2
seeds = []
triple = []


while true
	n = 1
	while n < m
		seeds[0] = m
		seeds[1] = n
		triple = create_triple seeds
		if is_triple? triple[0..2]
			break if triple[0] + triple[1] + triple[2] == 1000
		end
		n += 1
	end
	
	break triple if triple[0] + triple[1] + triple[2] == 1000
	m += 1
end

puts "Product is: #{triple[0] * triple[1] * triple[2]}"
