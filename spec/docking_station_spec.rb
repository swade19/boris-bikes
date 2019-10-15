require './lib/docking_station.rb'

describe DockingStation do
    it 'should create a new instance of the DockingStation class' do
      new_dock = DockingStation.new
      expect(new_dock).to be_a(DockingStation)
    end

    it 'should pass instances of the Bike class to bikes instance variable' do
			new_dock = DockingStation.new
			expect(new_dock).to respond_to(:dock).with(1).argument
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'should call the bike method on docking station class' do
      new_dock = DockingStation.new
      expect(new_dock).to respond_to(:bikes)
    end

    it 'docks bike' do
      new_bike = Bike.new
      expect(subject.dock(new_bike)).to include(new_bike)
    end

    it 'returns docked bikes' do
      new_bike = Bike.new
      subject.dock(new_bike)
      expect(subject.bikes).to include(new_bike)
    end

    describe '#release_bike' do
      it 'releases a bike' do
        10.times { subject.dock(Bike.new) }
        expect(subject.release_bike).to be_a(Bike)
      end

      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    describe '#dock_bike' do
      it 'raises an error when docking station is full' do
        subject.capacity.times { subject.dock Bike.new }
        expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
      end
    end
end