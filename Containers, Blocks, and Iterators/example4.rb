class File
	def File.openAndProces(*args)
		f = File.open(*args)
		yield f
		f.close()
	end
end

File.openAndProces("example1.rb", "r") do |aFile|
	print while aFile.gets
end