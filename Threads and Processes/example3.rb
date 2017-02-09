thread = []

6.times { |i| 
	thread << Thread.new(i) {
		raise "Boom!" if i == 3
		puts i
	}
}

thread.each { |t| t.join}