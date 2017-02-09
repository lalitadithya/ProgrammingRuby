begin
	opFile = File.open("hello.rb", "r")

rescue SystemCallError
	$stderr.print "IO Failed : " + $!.to_s + "\n"
else 
	puts "Success"
ensure
	puts "Closing file"
	opFile.close unless opFile.nil?
end
