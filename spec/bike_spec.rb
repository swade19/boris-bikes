require "./lib/bike.rb"

describe Bike do
  it "creates new instance of bike class" do
    new_bike = Bike.new
    expect(new_bike).to be_a(Bike)
  end

  it "tells you if the bike is working" do
    new_bike = Bike.new
    expect(new_bike.broken?).to eq false
  end

  it "creates an instance of a broken bike" do
    bike = Bike.new
    bike.report_as_broken
    expect(bike.broken?).to eq true
  end
end
