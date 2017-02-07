def takeBlock(p1)
	if block_given?
		yield(p1)
	else
		p1
	end
end

puts takeBlock("no block")
puts takeBlock("no block") { |s| s.sub(/no /, '')}