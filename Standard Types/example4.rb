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
		@name + "--" + @artist + "\t(#{@duration})"
	end
end

class SongList
	def initialize
		@songs = Array.new
	end

	def append(aSong)
		@songs.push(aSong)
		self
	end

	def deleteFirst
		@songs.shift
	end

	def deleteLast
		@songs.pop
	end

	def [](key)
		return @songs[key] if key.kind_of?(Integer)
		return @songs.find { |aSong| key == aSong.name}
	end
end

songs = SongList.new

songFile = File.open("songs.txt")

songFile.each do |line|
	file, length, name, title = line.chomp.split(/\s*\|\s*/)
	name.squeeze!(" ")
	mins, secs = length.scan(/\d+/)
	songs.append(Song.new(title, name, (mins.to_i * 60) + secs.to_i))
end

puts songs[1]