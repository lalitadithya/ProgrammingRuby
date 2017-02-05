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
end

class SongList
	MaxTime = 5*60

	def SongList.isTooLong(aSong)
		return aSong.duration > MaxTime
	end
end

s1 = Song.new("Song1", "Artist1", 234)
puts SongList.isTooLong(s1)

s2 = Song.new("Song2", "Artist2", 900)
puts SongList.isTooLong(s2)