class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		minutes = @seconds/60
		hours = minutes/60
		string = padded(hours) + ":" + padded(minutes - hours*60) + ":" + padded(@seconds - minutes*60)
	end

	def padded(int)
		int = int.to_s
		if int.length == 1
			int = "0" + int
		else
			int
		end
	end
end

