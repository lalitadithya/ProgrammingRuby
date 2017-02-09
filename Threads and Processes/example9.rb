fork do
	puts "In child, pid = #$$"
	exit 99
end

pid = Process.wait
puts "Child terminated, pid = #{pid}, exit code = #{$? >> 8}"