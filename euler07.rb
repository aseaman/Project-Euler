target = 10001
stack = [2,3]
n = 1

def is_prime? stack, n
	max_check = Math.sqrt(n).floor
	stack.each do |i|
		if i > max_check
			return true
		end
		if n % i == 0
			return false
		end
	end
	true
end

while true do
	if is_prime? stack, n += 4
		stack << n
	end
	
	if is_prime? stack, n += 2
		stack << n
	end
	
	if stack.length >= target
		break
	end
end

puts stack[target-1]