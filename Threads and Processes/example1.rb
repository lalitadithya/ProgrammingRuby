require 'net/http'

pages = %w( www.google.com
			www.yahoo.com
			www.microsoft.com
			)

threads = []

for page in pages
	threads << Thread.new(page) { |myPage|
		h = Net::HTTP.new(myPage, 80)
		puts "Fetching: #{myPage}"
		resp, data = h.get('/')
		puts "Got #{myPage}: #{resp.message}"
	}
end

threads.each { |aThread| aThread.join }