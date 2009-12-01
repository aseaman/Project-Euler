require "euler_math"

heap = Hash[0,0,1,1]
answer, max = 1, 1

1_000_000.times do |i|
	
	heap[i] = create_chain(heap, i, 1)
	
	if heap[i] > max
		max = heap[i]
		answer = i
	end
end

puts answer
puts heap[answer]