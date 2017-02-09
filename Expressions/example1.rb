class Song
	attr_reader :name, :artist, :duration
	attr_writer :duration

	@@plays = 0

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
		@plays = 0
	end

	def durationInMinutes
		@duration/60.0
	end

	def durationInMinutes=(value)
		@duration = (value*60).to_i
	end

	def play
		@plays += 1
		@@plays += 1
		"This song: #{@plays} plays. Total #{@@plays} plays."
	end

	def to_s
		@name + "--" + @artist
	end

	def [](fromTime, toTime)
		result = Song.new(self.name + "[extract]", self.artist, toTime - fromTime)
		result
	end
end

aSong = Song.new("song1", "artist1", 240)
puts aSong[0, 0.15]