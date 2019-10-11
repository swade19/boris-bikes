require './lib/docking_station.rb'

describe DockingStation do
    it 'should create a new instance of the DockingStation class' do
      new_dock = DockingStation.new
      expect(new_dock).to be_a(DockingStation)
    end

    it 'should release bike from docking station' do
      new_dock = DockingStation.new
      new_dock.release_bike
      expect(new_dock.release_bike).to be_a(Bike)
    end
  
end

describe Bike do
  it 'creates new instance of bike class' do
    new_bike = Bike.new
    expect(new_bike).to be_a(Bike)
  end
  
  it 'tells you if the bike is working' do
    new_bike = Bike.new
    new_bike.working
    expect(new_bike.working).to eq 'Bike working'
  end
end