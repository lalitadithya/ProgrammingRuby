class Array
	def inject(n)
		each { |value| n = yield(n, value)}
		n
	end

	def sum
		inject(0) { |n, value| n + value}
	end

	def product 
		inject(1) { |n, value| n * value}
	end
end

puts([1, 2, 3, 4, 5].sum)
puts([1, 2, 3, 4, 5].product)