class Song
	attr_reader :name, :artist, :duration
	attr_writer :duration

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end
end

aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.duration

aSong.duration = 257
puts aSong.duration