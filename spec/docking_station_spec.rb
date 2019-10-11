require './lib/docking_station.rb'

describe DockingStation do
    it 'should create a new instance of the DockingStation class' do
        new_dock = DockingStation.new

        expect(new_dock).to be_a(DockingStation)
    end
end