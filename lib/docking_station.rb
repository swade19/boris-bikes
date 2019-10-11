class DockingStation
	attr_reader :bike
	def initialize
		@bikes = 0
	end

  def release_bike
    Bike.new
	end
	
  def dock(bike)
    @bike = bike
  end
end