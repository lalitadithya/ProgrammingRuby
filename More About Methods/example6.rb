def fibUpTo(max)
	i1, i2 = 1, 1
	while i1 <= max
		yield i1
		i1, i2 = i2, i1 + i2
	end
end

def into(anArray)
	return proc { |val| anArray << val}
end

fibUpTo(20, &into(a = []))

puts a