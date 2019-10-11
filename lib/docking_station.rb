class DockingStation
  
  def release_bike
    new_bike = Bike.new
  end
end

class Bike
  def working
    return 'Bike working'
  end
end