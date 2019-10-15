class Bike
	def report_as_broken
		@broken = true
	end

	def broken?
		@broken
	end
	
	def working?
		true
	end
end