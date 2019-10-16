require "./lib/docking_station.rb"

describe DockingStation do
  subject { DockingStation.new }
  it "should create a new instance of the DockingStation class" do
    expect(subject).to be_a(DockingStation)
  end

  it "releases a bike" do
    new_dock = DockingStation.new
    bike = Bike.new
    new_dock.dock(bike)
    expect(new_dock.release_bike).to be_instance_of(Bike)
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "has a variable capacity" do
    expect { 21.times { subject.dock(double(Bike.new)) } }.to raise_error "Docking station is full"
  end

  it "defaults capacity" do
    bike = double(:bike)
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect { subject.dock(bike) }.to raise_error "Docking station is full"
  end

  it "docks bike" do
    new_bike = double(:bike)
    expect(subject.dock(new_bike)).to include(new_bike)
  end

  it "returns docked bikes" do
    new_bike = double(:bike)
    subject.dock(new_bike)
    expect(subject.bikes).to include(new_bike)
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "raises an error when docking station is full" do
    bike = double(:bike)
    subject.capacity.times { subject.dock bike }
    expect { subject.dock bike }.to raise_error "Docking station is full"
  end
end
