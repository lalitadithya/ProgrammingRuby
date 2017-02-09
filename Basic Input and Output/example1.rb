aFile = File.new("myfile.txt")
aFile.each_byte { |ch| putc ch; putc ?. }
aFile.close

puts 

File.open("myFile.txt") do |aFile|
	aFile.each_line { |line| puts "Got #{line.dump}"}
end

puts

File.open("myFile.txt") do |aFile|
	aFile.each_line("e") { |line| puts "Got #{line.dump}"}
end

puts

IO.foreach("myFile.txt") { |line| puts line}