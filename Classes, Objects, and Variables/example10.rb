class Logger
	private_class_method :new

	@@logger = nil

	def Logger.create
		@@logger = new unless @@logger
		@@logger
	end
end

puts Logger.create.to_s

puts Logger.create.to_s