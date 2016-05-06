

class Box
	def initialize(height=1, width=1, length=1)
		@height=height
		@width=width
		@length=length
	end

	def volume
		@height * @width * @length
	end
end

box1 = Box.new()
puts "volume: #{box1.volume}"

box2 = Box.new(2,2,2)
puts "volume: #{box2.volume}"