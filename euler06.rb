total_sums = 100 * 101 / 2
total_sums *= total_sums

total_squares = 0
1.upto(100) { |n|
	total_squares = n * n + total_squares
}

puts total_sums - total_squares

total_sums2 = 100 * 100 * 101 * 101 * 0.25
total_squares2  = 100 * 101 * 201 * (1/6)
puts total_sums2 - total_squares2