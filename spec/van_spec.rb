require "van"

describe Van do
  let(:van) { Van.new }
  let(:station) { DockingStation.new }

  it "is a instance of van class" do
    expect(van).to be_instance_of(Van)
  end

  it "can store broken bikes" do
    expect(van.broken_bikes).is_a?(Array)
  end

  it "picks up broken bikes from a docking station" do
    arr = [Bike.new, Bike.new]
    arr.each { |bike|
      bike.report_as_broken and station.dock(bike)
    }
    van.pick_up_broken_bikes(station)
    expect(van.broken_bikes).to include(arr[0], arr[1])
  end
end
