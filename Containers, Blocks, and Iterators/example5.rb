def nTimes(aThing)
	return proc { |n| aThing * n}
end

p1 = nTimes(23)
puts(p1.call(3))
puts(p1.call(4))

p2 = nTimes("Hi")
puts(p2.call(5))