class Song
	attr_reader :name, :artist, :duration
	attr_writer :duration

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end

	def durationInMinutes
		@duration/60.0
	end

	def durationInMinutes=(value)
		@duration = (value*60).to_i
	end
end

aSong = Song.new("Bicylops", "Fleck", 260)

puts aSong.durationInMinutes

aSong.durationInMinutes = 4.2

puts aSong.duration