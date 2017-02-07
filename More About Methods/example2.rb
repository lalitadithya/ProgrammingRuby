def varargs(arg1, *rest)
	"Got #{arg1} and #{rest.join(', ')}"
end

puts varargs("One")
puts varargs("One", "Two")
puts varargs("1", "2", "3")