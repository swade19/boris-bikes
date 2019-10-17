class DockingStation
  attr_accessor :capacity

  attr_accessor :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    raise "Docking station is full" if full?
    bikes << bike
  end

  def release_bike(bike)
    fail "No bikes available" if empty?
    bikes.delete(bike) if bike.broken? == false
  end

  def get_damaged_bikes
    damaged_bikes = @bikes.select(&:broken?)
    bikes.delete_if { |bike| bike.broken? == true }
    return damaged_bikes
  end

  private def full?
    bikes.count == @capacity
  end

  private def empty?
    bikes.empty?
  end
end
