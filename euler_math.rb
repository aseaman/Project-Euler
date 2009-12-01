require 'mathn'
class Integer
	def sum_digits
		self.to_s.split('').inject(0) { | memo, c | memo + c.to_i }
	end
	
	def factorial
		(2..self).inject(1) { | prod, n | prod * n }
	end
end

class Array
	def sum
		inject() { | sum, n | sum ? sum + n : n }
	end
end

def find_highest_prime_factor n
	(Math.sqrt(n).ceil).downto 2 do |i|
		if n % i == 0 && find_highest_prime_factor(i) == 1
			return i
		end
	end
	1
end

def test_prime target
	divisor = 2
	while (target > 1)
		if (0 == (target % divisor))
			target /= divisor
			divisor -= 1
		end
		divisor += 1
	end
	return divisor
end

def create_triple seed
	m = seed[0]
	n = seed[1]
	triple = []
	triple << 2 * m * n
	triple << m**2 - n**2
	triple << m**2 + n**2
	return triple
end

def is_triple? triplet
	return triplet[0]**2 + triplet[1]**2 == triplet[2]**2
end

def create_chain heap, seed, count
	
	if heap.has_key? seed
		return heap[seed] + count
	end
	
	if (seed & 1 == 0)
		return create_chain(heap, seed / 2, count + 1)
	end
	
	create_chain(heap, 3 * seed + 1, count + 1)
end

def create_triangle_number num
	(n * (n + 1)) / 2
end

def prime_factors n
	factors = []
	prime = 2
	while (prime <= Math.sqrt(n))
		if n % prime == 0
			factors << prime
			n = n / prime
		else
			prime += 1
		end
	end
	
	if n != 1
		factors << n
	end
end

def calculate_total_divisors prime_factors
	divisors = {}
	prime_factors.each { |x| 
		if (divisors.empty?)
			divisors << prime_factors.shift
		elsif (!divisors.include?(x))
			divisors << prime_factors.shift
		else
			prime_factors.shift
		end }
		return divisors
end