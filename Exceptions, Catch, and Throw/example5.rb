catch (:done) do
	while line = gets
		throw :done if line =~ /end/
	end
end