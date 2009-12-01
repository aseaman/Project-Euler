curr = 0
succ = 1
total = 0

1.upto(35) do |i|
	curr, succ = succ, curr + succ
	if (curr % 2 == 0 and curr < 4000000)
		total += curr
	end
end

puts total