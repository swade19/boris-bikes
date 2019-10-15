class DockingStation
  attr_accessor :capacity

  attr_reader :bikes 
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?

    @bikes.pop
  end
  
  private 

  
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end