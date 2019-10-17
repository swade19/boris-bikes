require "./lib/bike.rb"

describe Bike do
  let(:bike) { Bike.new }

  it "creates new instance of bike class" do
    expect(bike).to be_a(Bike)
  end

  it "tells you if the bike is working" do
    expect(bike.broken?).to eq false
  end

  it "creates an instance of a broken bike" do
    bike.report_as_broken
    expect(bike.broken?).to eq true
  end
  it "allows users to report bikes as broken when docking" do
    bike.report_as_broken
    expect(bike.broken?).to eq(true)
  end
end
