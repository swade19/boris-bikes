class Van
  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def pick_up_broken_bikes(station)
    station.get_damaged_bikes.each do |bike|
      broken_bikes << bike
    end
  end
end
