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
   # @bikes.pop unless bikes.each do |bike| bike.broken? end 

   fail 'No bikes available' if empty?
    if bikes.broken? == true 
      fail "bike is broken"
    else
    end
    # for bike in bikes do  
    #   fail 'bike is broken' if bike.broken?
    #   # else  
    #   #   bikes.pop
    #   # end 
    # end
  end  
  private 

  
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end