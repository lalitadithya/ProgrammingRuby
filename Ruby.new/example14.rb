line = gets
print line

ARGF.each { |line| print line if line =~ /ruby/ }