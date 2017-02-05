class Song
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end
	def name
		@name
	end
	def artist
		@artist
	end
	def duration
		@duration
	end
end

aSong = Song.new("Bicylops", "Fleck", 260)

puts aSong.artist
puts aSong.name
puts aSong.duration
