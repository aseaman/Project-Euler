n = 1000
a = (1..n / 2).to_a.find { |a|
	(n * (n / 2 - a) % (n - a)).zero?
}
b = n * (n / 2 - a) / (n - a)

puts "Product is #{a * b * (n - a - b)}."