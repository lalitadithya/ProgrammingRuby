def showRE(a, re)
	if a =~ re
		"#{$`}<<#{$&}>>#{$'}"
	else
		"no match"
	end
end

puts showRE('very intresting', /t/)
puts showRE('Fats Waller', /ll/)
puts showRE('my string 123456 end', /\d+/)