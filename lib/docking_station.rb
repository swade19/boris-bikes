class DockingStation
  attr_accessor :capacity

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike, broken = false)
    raise "Docking station is full" if full?
    bike.report_as_broken if broken == true
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.each_with_index do |bike, index|
      if !bike.broken?
        @bikes.delete_at(index)
        return bike
      else
        raise "Bike is broken"
      end
    end
  end

  private def full?
    @bikes.count == @capacity
  end

  private def empty?
    @bikes.empty?
  end
end
