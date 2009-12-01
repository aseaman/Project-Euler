max_palindrome = 0
100.upto(999) { |x|
	100.upto(999) { |y|
		product = x * y
		max_palindrome = [max_palindrome, product].max if product.to_s == product.to_s.reverse
	}
}

puts max_palindrome