require "./lib/bike.rb"

describe Bike do
  subject { Bike.new }

  it "creates new instance of bike class" do
    expect(subject).to be_a(Bike)
  end

  it "tells you if the bike is working" do
    expect(subject.broken?).to eq false
  end

  it "creates an instance of a broken bike" do
    subject.report_as_broken
    expect(subject.broken?).to eq true
  end
  it "allows users to report bikes as broken when docking" do
    subject.report_as_broken
    expect(subject.broken?).to eq(true)
  end
end
