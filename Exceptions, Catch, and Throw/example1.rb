begin
	opFile = File.open("hello.txt", "r")

rescue SystemCallError
	$stderr.print "IO Failed : \n\n" + $!.to_s
	raise
end
