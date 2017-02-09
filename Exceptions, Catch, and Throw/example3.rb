try = true

begin
	opFile = File.open("hello.rb", "r")

rescue SystemCallError
	$stderr.print "IO Failed : " + $!.to_s + "\n"

	if try
		try = false
		puts "Retrying"
		retry
	else
		puts "Gave up"
	end
else 
	puts "Success"
ensure
	puts "Closing file"
	opFile.close unless opFile.nil?
end
