require "./lib/docking_station.rb"

describe DockingStation do
  let(:subject) { DockingStation.new }
  let(:bike) { double :bike }
  it "should create a new instance of the DockingStation class" do
    expect(subject).to be_a(DockingStation)
  end

  it { is_expected.to respond_to :release_bike }

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "has a variable capacity" do
    expect { 21.times { subject.dock(double(Bike.new)) } }.to raise_error "Docking station is full"
  end

  it "defaults capacity" do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect { subject.dock(bike) }.to raise_error "Docking station is full"
  end

  it "docks bike" do
    expect(subject.dock(bike)).to include(bike)
  end

  it "returns docked bikes" do
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "raises an error when docking station is full" do
    subject.capacity.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error "Docking station is full"
  end

  it "releases a working bike" do
    allow(bike).to receive(:broken?).and_return(false)
    subject.dock(bike)
    released_bike = subject.release_bike
    expect(released_bike).not_to be_broken
  end
end
