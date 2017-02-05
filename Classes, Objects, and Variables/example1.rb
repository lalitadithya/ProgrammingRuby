class Song
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end
end

aSong = Song.new("Bicylops", "Fleck", 260)

puts aSong.to_s

class Song
	def to_s
		"Song: #{@name}--#{@artist}--#{@duration}"
	end
end

puts aSong.to_s