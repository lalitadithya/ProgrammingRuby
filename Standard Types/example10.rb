def mixedCase(aName)
	aName.gsub(/\b\w/) {$&.upcase}
end

puts mixedCase("fats waller")
puts mixedCase("louis armstrong")
puts mixedCase("strength in numbers")