require 'mathn'
sum = 0
Prime.each(2_000_000) { |p| sum += p }

puts "Sum of primes is #{ sum }."